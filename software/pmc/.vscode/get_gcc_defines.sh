#!/bin/bash

arm-none-eabi-gcc -mthumb -mcpu=cortex-m0plus -mfloat-abi=soft -E -dM - < /dev/null | sort | sed -e 's/"/\\"/g' | sed -r -e 's/#define ([^ ]+).([^\n]+)/"\1=\2",/g'
