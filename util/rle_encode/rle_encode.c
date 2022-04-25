#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

uint8_t rle_encode(const uint8_t *pubInput, const uint32_t ulInputSize, uint8_t *pubOutput, const uint32_t ulOutputMaxSize, uint32_t *pulOutputSize)
{
    if(!pubInput)
        return 0;

    if(!ulInputSize)
        return 0;

    if(!pubOutput)
        return 0;

    if(!ulOutputMaxSize)
        return 0;

    if(!pulOutputSize)
        return 0;

    uint32_t ulReadIndex = 0;
    uint32_t ulWriteIndex = 0;
    uint16_t usPrevData = 65535;

    while(ulReadIndex < ulInputSize && ulWriteIndex < ulOutputMaxSize)
    {
        uint8_t ubData = pubInput[ulReadIndex++];

        pubOutput[ulWriteIndex++] = ubData;

        if(usPrevData == ubData)
        {
            if(ulWriteIndex >= ulOutputMaxSize)
                return 0;

            uint8_t ubCount = 0;

            while(ubCount < 255 && ulReadIndex < ulInputSize)
            {
                ubData = pubInput[ulReadIndex++];

                if(usPrevData != ubData)
                {
                    ulReadIndex--;

                    break;
                }

                ubCount++;
            }

            pubOutput[ulWriteIndex++] = ubCount;

            usPrevData = 65535;
        }
        else
        {
            usPrevData = ubData;
        }
    }

    if(ulReadIndex >= ulInputSize)
    {
        *pulOutputSize = ulWriteIndex;

        return 1;
    }

    return 0;
}
uint8_t rle_decode(const uint8_t *pubInput, const uint32_t ulInputSize, uint8_t *pubOutput, const uint32_t ulOutputMaxSize, uint32_t *pulOutputSize)
{
    if(!pubInput)
        return 0;

    if(!ulInputSize)
        return 0;

    if(!pubOutput)
        return 0;

    if(!ulOutputMaxSize)
        return 0;

    if(!pulOutputSize)
        return 0;

    uint32_t ulReadIndex = 0;
    uint32_t ulWriteIndex = 0;
    uint16_t usPrevData = 65535;

    while(ulReadIndex < ulInputSize && ulWriteIndex < ulOutputMaxSize)
    {
        uint8_t ubData = pubInput[ulReadIndex++];

        pubOutput[ulWriteIndex++] = ubData;

        if(usPrevData == ubData)
        {
            if(ulReadIndex >= ulInputSize)
                return 0;

            uint8_t ubCount = pubInput[ulReadIndex++];

            while(ubCount && ulWriteIndex < ulOutputMaxSize)
            {
                pubOutput[ulWriteIndex++] = ubData;

                ubCount--;
            }

            if(ubCount)
                return 0;

            usPrevData = 65535;
        }
        else
        {
            usPrevData = ubData;
        }
    }

    if(ulReadIndex >= ulInputSize)
    {
        *pulOutputSize = ulWriteIndex;

        return 1;
    }

    return 0;
}

int main(int argc, char *argv[])
{
    if(argc < 3)
    {
        printf("Usage: %s <input> <output>\n", argv[0]);

        return 1;
    }

    FILE *f = fopen(argv[1], "rb");

    if(!f)
    {
        printf("Failed to open input file\n");

        return 1;
    }

    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    fseek(f, 0, SEEK_SET);

    uint8_t *in = (uint8_t *)malloc(fsize);

    if(!in)
    {
        printf("Failed to allocate memory\n");

        return 1;
    }

    uint8_t *out = (uint8_t *)malloc(fsize);

    if(!out)
    {
        printf("Failed to allocate memory\n");

        return 1;
    }

    fread(in, fsize, 1, f);
    fclose(f);

    uint32_t out_size = 0;
    rle_encode(in, fsize, out, fsize, &out_size);

    f = fopen(argv[2], "wb");

    if(!f)
    {
        printf("Failed to open output file\n");

        return 1;
    }

    fwrite(out, out_size, 1, f);
    fclose(f);

    return 0;
}


