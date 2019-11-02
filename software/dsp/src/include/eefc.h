#ifndef __EEFC_H__
#define __EEFC_H__

#include <sam.h>
#include "atomic.h"
#include "utils.h"

void ITCM_CODE eefc_init();

uint32_t eefc_get_flash_size();
uint32_t eefc_get_flash_page_size();

void ITCM_CODE eefc_get_unique_id(uint32_t *pulID);

#endif  // __EEFC_H__
