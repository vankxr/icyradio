# Module Config
KPATH ?= /usr/src/linux-headers-`uname -r`
MOD_NAME = icyradio

# Directories
M ?= `pwd`
SOURCEDIR = src
INCLUDEDIR = include

# Extra flags
EXTRA_CFLAGS := -I$(M)/$(INCLUDEDIR)

# Sources & objects
SOURCES := $(notdir $(wildcard $(M)/$(SOURCEDIR)/*.c))
OBJECTS := $(SOURCES:%.c=$(SOURCEDIR)/%.o)

obj-m := $(MOD_NAME).o
$(MOD_NAME)-objs := $(OBJECTS)

.PHONY: all clean

all:
	make -C $(KPATH) M=$(M) modules

clean:
	make -C $(KPATH) M=$(M) clean
