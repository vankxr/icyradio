#ifndef __CRYPTO_H__
#define __CRYPTO_H__

#include <em_device.h>
#include "utils.h"

#define SHA256STRU "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"
#define SHA256STRL "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x"
#define SHA2562STR(hash) hash[0], hash[1], hash[2], hash[3], hash[4], hash[5], hash[6], hash[7], hash[8], hash[9], hash[10], hash[11], hash[12], hash[13], hash[14], hash[15], hash[16], hash[17], hash[18], hash[19], hash[20], hash[21], hash[22], hash[23], hash[24], hash[25], hash[26], hash[27], hash[28], hash[29], hash[30], hash[31]

#define SHA1STRU "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"
#define SHA1STRL "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x"
#define SHA12STR(hash) hash[0], hash[1], hash[2], hash[3], hash[4], hash[5], hash[6], hash[7], hash[8], hash[9], hash[10], hash[11], hash[12], hash[13], hash[14], hash[15], hash[16], hash[17], hash[18], hash[19]

void crypto_init();
void crypto_sha256(uint8_t *pubData, uint32_t ulDataSize, uint8_t pubDigest[32]);
void crypto_sha1(uint8_t *pubData, uint32_t ulDataSize, uint8_t pubDigest[20]);

#endif  // __CRYPTO_H__
