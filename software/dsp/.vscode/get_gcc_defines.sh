#!/bin/bash

arm-none-eabi-gcc -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-d16 -E -dM - < /dev/null | sort | sed -e 's/"/\\"/g' | sed -r -e 's/#define ([^ ]+).([^\n]+)/"\1=\2",/g'
