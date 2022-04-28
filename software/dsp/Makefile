# App Config
ARM_LIBROOT ?= /mnt/e/Projetos/ARM/ARMdev/lib/
DEVICEDIR = $(ARM_LIBROOT)/Atmel.SAMV71_DFP.2.4.182/samv71b
COREDIR = $(ARM_LIBROOT)/ARM.CMSIS.5.8.0/CMSIS
MCU_TYPE = __SAMV71Q21B__
APP_ADDRESS = 0x00000000
APP_NAME = icyradio-dsp

# Multiprocessing
MAX_PARALLEL =

# Directories
LIBDIR = lib
DEPSDIR = deps
TARGETDIR = bin
SOURCEDIR = src
OBJECTDIR = bin/obj
INCLUDEDIR = include

STRUCT := $(shell find $(SOURCEDIR) -type d)

SOURCEDIRSTRUCT := $(filter-out %/include, $(STRUCT))
INCLUDEDIRSTRUCT := $(filter %/include, $(STRUCT)) $(DEVICEDIR)/include $(COREDIR)/Core/Include $(COREDIR)/DSP/Include
OBJECTDIRSTRUCT := $(subst $(SOURCEDIR), $(OBJECTDIR), $(SOURCEDIRSTRUCT))

# Build type
BUILD_TYPE ?= debug

# Version
$(shell if ! test -f $(TARGETDIR)/.version; then echo 0 > $(TARGETDIR)/.version; fi)

INC_VERSION ?= n
BUILD_VERSION = $(shell cat $(TARGETDIR)/.version)

ifeq ($(INC_VERSION), y)
$(shell if test -f .vscode/launch.json; then sed -i 's/v$(BUILD_VERSION).$(APP_NAME)/v$(shell echo $$(($(BUILD_VERSION) + 1))).$(APP_NAME)/g' .vscode/launch.json; fi)
$(shell echo $$(($(BUILD_VERSION) + 1)) > $(TARGETDIR)/.version)
$(shell rm -rf $(OBJECTDIR)/*)
BUILD_VERSION = $(shell cat $(TARGETDIR)/.version)
endif

ifeq ($(BUILD_VERSION), 0)
$(shell echo $$(($(BUILD_VERSION) + 1)) > $(TARGETDIR)/.version)
$(shell rm -rf $(OBJECTDIR)/*)
BUILD_VERSION = $(shell cat $(TARGETDIR)/.version)
endif

# Compillers & Linker
CC = arm-none-eabi-gcc
CXX = arm-none-eabi-g++
LD = arm-none-eabi-gcc
AS = arm-none-eabi-as
STRIP = arm-none-eabi-strip
OBJCOPY = arm-none-eabi-objcopy
OBJDUMP = arm-none-eabi-objdump
GDB = arm-none-eabi-gdb

# Compillers & Linker flags
ASFLAGS = -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-d16
CFLAGS = $(addprefix -I,$(INCLUDEDIRSTRUCT)) -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-d16 -nostdlib -nostartfiles -ffunction-sections -fdata-sections -ffreestanding -O3 -std=gnu99 -Wpointer-arith -Werror -D$(MCU_TYPE) -DBUILD_VERSION=$(BUILD_VERSION)
CXXFLAGS = $(addprefix -I,$(INCLUDEDIRSTRUCT)) -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-d16 -nostdlib -nostartfiles -ffunction-sections -fdata-sections -ffreestanding -fno-rtti -fno-exceptions -O3 -std=c++17 -Wpointer-arith -Werror -D$(MCU_TYPE) -DBUILD_VERSION=$(BUILD_VERSION)
LDFLAGS = -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-d16 --specs=nano.specs --specs=nosys.specs -nostdlib -nostartfiles -ffunction-sections -fdata-sections -ffreestanding -Wl,--gc-sections
LDLIBS = -lm -lc -lgcc -lnosys -larm_cortexM7lfdp_math
LDLIBSPATH = -L$(COREDIR)/DSP/Lib/GCC

ifeq ($(BUILD_TYPE), debug)
CFLAGS += -g
CXXFLAGS += -g
endif

## Linker scripts
LDSCRIPT = ld/atsamxxxx21x_app.ld

# Target
TARGET = $(TARGETDIR)/v$(BUILD_VERSION).$(APP_NAME)

# Sources & objects
SRCFILES := $(addsuffix /*, $(SOURCEDIRSTRUCT))
SRCFILES := $(wildcard $(SRCFILES))

ASSOURCES := $(filter %.s, $(SRCFILES))
ASOBJECTS := $(subst $(SOURCEDIR), $(OBJECTDIR), $(ASSOURCES:%.s=%.o))

CSOURCES := $(filter %.c, $(SRCFILES))
COBJECTS := $(subst $(SOURCEDIR), $(OBJECTDIR), $(CSOURCES:%.c=%.o))

CXXSOURCES := $(filter %.cpp, $(SRCFILES))
CXXOBJECTS := $(subst $(SOURCEDIR), $(OBJECTDIR), $(CXXSOURCES:%.cpp=%.o))

SOURCES = $(ASSOURCES) $(CSOURCES) $(CXXSOURCES)
OBJECTS = $(ASOBJECTS) $(COBJECTS) $(CXXOBJECTS)

all: clean-bin make-dir version compile mem-usage

compile:
	@$(MAKE) INC_VERSION=n --no-print-directory -j${MAX_PARALLEL} $(TARGET).elf
	@$(MAKE) INC_VERSION=n --no-print-directory -j${MAX_PARALLEL} $(TARGET).bin $(TARGET).hex $(TARGET).lss

$(TARGET).lss: $(TARGET).elf
	@echo Creating LSS file \'$@\'...
	@$(OBJDUMP) -S --disassemble $< > $@

$(TARGET).bin: $(TARGET).elf
	@echo Creating BIN file \'$@\'...
	@$(OBJCOPY) -O binary --only-section=.isr_vector --only-section=.text --only-section=.ARM --only-section=.iram0.text --only-section=.dram0.data --only-section=.data $< $(TARGET).irom0.bin
	@$(OBJCOPY) -O binary --only-section=.irom2.text $< $(TARGET).irom2.bin
	@$(OBJCOPY) -O binary --only-section=.drom0.data $< $(TARGET).drom0.bin

$(TARGET).hex: $(TARGET).elf
	@echo Creating HEX file \'$@\'...
	@$(OBJCOPY) -O ihex --remove-section=.irom2.text --remove-section=.drom0.data $< $@
	@$(OBJCOPY) -O ihex --only-section=.isr_vector --only-section=.text --only-section=.ARM --only-section=.iram0.text --only-section=.dram0.data --only-section=.data $< $(TARGET).flash.hex
	@$(OBJCOPY) -O ihex --only-section=.irom2.text --only-section=.drom0.data $< $(TARGET).qspi.hex

$(TARGET).elf: $(OBJECTS)
	@echo ---------------------------------------------------------------------------
	@echo Creating ELF file \'$@\'...
	@$(LD) $(LDFLAGS) -o $@ $^ -T $(LDSCRIPT) -L./$(LIBDIR) $(LDLIBSPATH) -lopus -lliquid -lfec $(LDLIBS) -Wl,-Map=$(TARGET).map
ifeq ($(BUILD_TYPE), release)
	@$(STRIP) -g $@
endif

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.s
	@echo Compilling ASM file \'$<\' \> \'$@\'...
	@$(AS) $(ASFLAGS) -MD -o $@ $<

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.c
	@echo Compilling C file \'$<\' \> \'$@\'...
	@$(CC) -I./$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -MD -c -o $@ $<

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.cpp
	@echo Compilling C++ file \'$<\' \> \'$@\'...
	@$(CXX) -I./$(LIBDIR)/$(INCLUDEDIR) $(CXXFLAGS) -MD -c -o $@ $<

debug: $(TARGET).elf
	$(GDB) $(TARGET).elf

inc-version:
	@echo $$(($(BUILD_VERSION) + 1)) > $(TARGETDIR)/.version
	@if test -f .vscode/launch.json; then sed -i 's/v$(BUILD_VERSION).$(APP_NAME)/v$(shell echo $$(($(BUILD_VERSION) + 1))).$(APP_NAME)/g' .vscode/launch.json; fi

dec-version:
	@echo $$(($(BUILD_VERSION) - 1)) > $(TARGETDIR)/.version
	@if test -f .vscode/launch.json; then sed -i 's/v$(BUILD_VERSION).$(APP_NAME)/v$(shell echo $$(($(BUILD_VERSION) - 1))).$(APP_NAME)/g' .vscode/launch.json; fi

version:
	@echo Build version: v$(BUILD_VERSION)
	@echo ---------------------------------------------------------------------------

mem-usage: $(TARGET).elf
	@echo ---------------------------------------------------------------------------
	@armmem -l $(LDSCRIPT) -d -h $<

make-dir:
	@mkdir -p $(OBJECTDIRSTRUCT)

clean-bin:
	@rm -f $(TARGETDIR)/*.lss
	@rm -f $(TARGETDIR)/*.hex
	@rm -f $(TARGETDIR)/*.bin
	@rm -f $(TARGETDIR)/*.map
	@rm -f $(TARGETDIR)/*.elf

clean: clean-bin
	@rm -rf $(OBJECTDIR)/*

deps: deps-dir libopus libfec libliquid

deps-dir:
	@mkdir -p $(LIBDIR)/$(INCLUDEDIR)

libopus:
	@cd $(DEPSDIR) && wget https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz
	@cd $(DEPSDIR) && tar xzf opus-1.3.1.tar.gz
	@cd $(DEPSDIR)/opus-1.3.1 && ./configure --disable-shared --enable-static --disable-dependency-tracking --disable-maintainer-mode --disable-doc --disable-extra-programs --host=arm-none-eabi CFLAGS=" -I../../$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -Wno-error" LDFLAGS="$(LDFLAGS) $(LDLIBSPATH) -L../../$(LIBDIR)" LIBS="$(LDLIBS)" CPP="$(CC) -I../../$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -Wno-error -E"
	@cd $(DEPSDIR)/opus-1.3.1 && make
	@ln -fs ../$(DEPSDIR)/opus-1.3.1/.libs/libopus.a $(LIBDIR)/libopus.a
	@ln -fs ../../$(DEPSDIR)/opus-1.3.1/include/opus.h $(LIBDIR)/$(INCLUDEDIR)/opus.h
	@ln -fs ../../$(DEPSDIR)/opus-1.3.1/include/opus_types.h $(LIBDIR)/$(INCLUDEDIR)/opus_types.h
	@ln -fs ../../$(DEPSDIR)/opus-1.3.1/include/opus_projection.h $(LIBDIR)/$(INCLUDEDIR)/opus_projection.h
	@ln -fs ../../$(DEPSDIR)/opus-1.3.1/include/opus_multistream.h $(LIBDIR)/$(INCLUDEDIR)/opus_multistream.h
	@ln -fs ../../$(DEPSDIR)/opus-1.3.1/include/opus_defines.h $(LIBDIR)/$(INCLUDEDIR)/opus_defines.h

libfec:
	@cd $(DEPSDIR)/libfec && ./configure --host=arm-none-eabi CFLAGS=" -I../../$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -Wno-error" LDFLAGS="$(LDFLAGS) $(LDLIBSPATH) -L../../$(LIBDIR)" LIBS="$(LDLIBS)" CPP="$(CC) -I../../$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -Wno-error -E"
	@cd $(DEPSDIR)/libfec && make
	@ln -fs ../$(DEPSDIR)/libfec/libfec.a $(LIBDIR)/libfec.a
	@ln -fs ../../$(DEPSDIR)/libfec/fec.h $(LIBDIR)/$(INCLUDEDIR)/fec.h

libliquid:
	@cd $(DEPSDIR)/liquid-dsp && git apply ../patches/liquid-dsp.patch
	@cd $(DEPSDIR)/liquid-dsp && ./bootstrap.sh
	@cd $(DEPSDIR)/liquid-dsp && ./configure --host=arm-none-eabi CFLAGS="-I../../$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -Wno-error" LDFLAGS="$(LDFLAGS) $(LDLIBSPATH) -L../../$(LIBDIR)" LIBS="$(LDLIBS)" CPP="$(CC) -I../../$(LIBDIR)/$(INCLUDEDIR) $(CFLAGS) -Wno-error -E"
	@sed -i 's/#define malloc rpl_malloc/\/\* #undef malloc \*\//g' $(DEPSDIR)/liquid-dsp/config.h
	@sed -i 's/#define realloc rpl_realloc/\/\* #undef realloc \*\//g' $(DEPSDIR)/liquid-dsp/config.h
	@cd $(DEPSDIR)/liquid-dsp && make
	@ln -fs ../$(DEPSDIR)/liquid-dsp/libliquid.a $(LIBDIR)/libliquid.a
	@ln -fs ../../$(DEPSDIR)/liquid-dsp/include/liquid.h $(LIBDIR)/$(INCLUDEDIR)/liquid.h

-include $(OBJECTS:.o=.d)

.PHONY: clean clean-bin make-dir mem-usage version dec-version inc-version debug compile all
