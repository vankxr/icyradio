#ifndef __IMAGES_H__
#define __IMAGES_H__

#include "rgb565.h"

typedef struct
{
    rgb565_t *pPixels;
    uint16_t usWidth;
    uint16_t usHeight;
} image_t;

// Declare all images
extern const image_t xPepeImage;

#endif	// __IMAGES_H__