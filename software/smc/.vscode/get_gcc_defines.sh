#!/bin/bash

arm-none-eabi-gcc -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -E -dM - < /dev/null | sort | sed -e 's/"/\\"/g' | sed -r -e 's/#define ([^ ]+).([^\n]+)/"\1=\2",/g'
