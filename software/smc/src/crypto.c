#include "crypto.h"

void crypto_init()
{
    cmu_hfbus_clock_gate(CMU_HFBUSCLKEN0_CRYPTO0, 1);
}
void crypto_sha256(uint8_t *pubData, uint32_t ulDataSize, uint8_t pubDigest[32])
{
    if(!pubData)
        return;

    if(!ulDataSize)
        return;

    if(!pubDigest)
        return;

    uint32_t pulSHABlock[16];
    uint8_t *pubSHABlock = (uint8_t *)pulSHABlock;

    pulSHABlock[0] = 0x6A09E667;
    pulSHABlock[1] = 0xBB67AE85;
    pulSHABlock[2] = 0x3C6EF372;
    pulSHABlock[3] = 0xA54FF53A;
    pulSHABlock[4] = 0x510E527F;
    pulSHABlock[5] = 0x9B05688C;
    pulSHABlock[6] = 0x1F83D9AB;
    pulSHABlock[7] = 0x5BE0CD19;

    CRYPTO0->CTRL = CRYPTO_CTRL_SHA_SHA2;
    CRYPTO0->SEQCTRL = 0;
    CRYPTO0->SEQCTRLB = 0;

    CRYPTO0->WAC = (CRYPTO0->WAC & ~_CRYPTO_WAC_RESULTWIDTH_MASK) | CRYPTO_WAC_RESULTWIDTH_256BIT;

    for(uint8_t i = 0; i < 8; i++)
        CRYPTO0->DDATA1 = pulSHABlock[i];

    CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_DDATA1TODDATA0 | (CRYPTO_CMD_INSTR_SELDDATA0DDATA1 << 8) | (CRYPTO_CMD_INSTR_EXEC << 16);

    uint32_t ulByteSize = ulDataSize;

    while(ulByteSize >= 64)
    {
        for(uint8_t i = 0; i < 16; i++)
            CRYPTO0->QDATA1BIG = ((uint32_t *)pubData)[i];

        CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_SHA | (CRYPTO_CMD_INSTR_MADD32 << 8) | (CRYPTO_CMD_INSTR_DDATA0TODDATA1 << 16) | (CRYPTO_CMD_INSTR_EXEC << 24);

        ulByteSize -= 64;
        pubData += 64;
    }

    uint32_t ulBlockSize = 0;

    while(ulByteSize--)
        pubSHABlock[ulBlockSize++] = *pubData++;

    pubSHABlock[ulBlockSize++] = 0x80;

    if(ulBlockSize > 56)
    {
        while(ulBlockSize < 64)
            pubSHABlock[ulBlockSize++] = 0;

        for(uint8_t i = 0; i < 16; i++)
            CRYPTO0->QDATA1BIG = pulSHABlock[i];

        CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_SHA | (CRYPTO_CMD_INSTR_MADD32 << 8) | (CRYPTO_CMD_INSTR_DDATA0TODDATA1 << 16) | (CRYPTO_CMD_INSTR_EXEC << 24);

        ulBlockSize = 0;
    }

    while(ulBlockSize < 56)
        pubSHABlock[ulBlockSize++] = 0;

    uint64_t ullBitSize = (uint64_t)ulDataSize << 3;

    *(uint32_t *)&pubSHABlock[56] = __REV((uint32_t)(ullBitSize >> 32));
    *(uint32_t *)&pubSHABlock[60] = __REV((uint32_t)ullBitSize & 0xFFFFFFFF);

    for(uint8_t i = 0; i < 16; i++)
        CRYPTO0->QDATA1BIG = pulSHABlock[i];

    CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_SHA | (CRYPTO_CMD_INSTR_MADD32 << 8) | (CRYPTO_CMD_INSTR_DDATA0TODDATA1 << 16) | (CRYPTO_CMD_INSTR_EXEC << 24);

    for(uint8_t i = 0; i < 8; i++)
        ((uint32_t *)pubDigest)[i] = CRYPTO0->DDATA0BIG;
}
void crypto_sha1(uint8_t *pubData, uint32_t ulDataSize, uint8_t pubDigest[20])
{
    if(!pubData)
        return;

    if(!ulDataSize)
        return;

    if(!pubDigest)
        return;

    uint32_t pulSHABlock[16];
    uint8_t *pubSHABlock = (uint8_t *)pulSHABlock;

    pulSHABlock[0] = 0x67452301;
    pulSHABlock[1] = 0xEFCDAB89;
    pulSHABlock[2] = 0x98BADCFE;
    pulSHABlock[3] = 0x10325476;
    pulSHABlock[4] = 0xC3D2E1F0;
    pulSHABlock[5] = 0x00000000;
    pulSHABlock[6] = 0x00000000;
    pulSHABlock[7] = 0x00000000;

    CRYPTO0->CTRL = CRYPTO_CTRL_SHA_SHA1;
    CRYPTO0->SEQCTRL = 0;
    CRYPTO0->SEQCTRLB = 0;

    CRYPTO0->WAC = (CRYPTO0->WAC & ~_CRYPTO_WAC_RESULTWIDTH_MASK) | CRYPTO_WAC_RESULTWIDTH_256BIT;

    for(uint8_t i = 0; i < 8; i++)
        CRYPTO0->DDATA1 = pulSHABlock[i];

    CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_DDATA1TODDATA0 | (CRYPTO_CMD_INSTR_SELDDATA0DDATA1 << 8) | (CRYPTO_CMD_INSTR_EXEC << 16);

    uint32_t ulByteSize = ulDataSize;

    while(ulByteSize >= 64)
    {
        for(uint8_t i = 0; i < 16; i++)
            CRYPTO0->QDATA1BIG = ((uint32_t *)pubData)[i];

        CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_SHA | (CRYPTO_CMD_INSTR_MADD32 << 8) | (CRYPTO_CMD_INSTR_DDATA0TODDATA1 << 16) | (CRYPTO_CMD_INSTR_EXEC << 24);

        ulByteSize -= 64;
        pubData += 64;
    }

    uint32_t ulBlockSize = 0;

    while(ulByteSize--)
        pubSHABlock[ulBlockSize++] = *pubData++;

    pubSHABlock[ulBlockSize++] = 0x80;

    if(ulBlockSize > 56)
    {
        while(ulBlockSize < 64)
            pubSHABlock[ulBlockSize++] = 0;

        for(uint8_t i = 0; i < 16; i++)
            CRYPTO0->QDATA1BIG = pulSHABlock[i];

        CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_SHA | (CRYPTO_CMD_INSTR_MADD32 << 8) | (CRYPTO_CMD_INSTR_DDATA0TODDATA1 << 16) | (CRYPTO_CMD_INSTR_EXEC << 24);

        ulBlockSize = 0;
    }

    while(ulBlockSize < 56)
        pubSHABlock[ulBlockSize++] = 0;

    uint64_t ullBitSize = (uint64_t)ulDataSize << 3;

    *(uint32_t *)&pubSHABlock[56] = __REV((uint32_t)(ullBitSize >> 32));
    *(uint32_t *)&pubSHABlock[60] = __REV((uint32_t)ullBitSize & 0xFFFFFFFF);

    for(uint8_t i = 0; i < 16; i++)
        CRYPTO0->QDATA1BIG = pulSHABlock[i];

    CRYPTO0->SEQ0 = CRYPTO_CMD_INSTR_SHA | (CRYPTO_CMD_INSTR_MADD32 << 8) | (CRYPTO_CMD_INSTR_DDATA0TODDATA1 << 16) | (CRYPTO_CMD_INSTR_EXEC << 24);

    for(uint8_t i = 0; i < 5; i++)
        ((uint32_t *)pubDigest)[i] = CRYPTO0->DDATA0BIG;

    REG_DISCARD(&CRYPTO0->DDATA0BIG);
    REG_DISCARD(&CRYPTO0->DDATA0BIG);
    REG_DISCARD(&CRYPTO0->DDATA0BIG);
}