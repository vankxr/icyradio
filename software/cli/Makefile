# App Config
APP_NAME = icyradio_tool

# Multiprocessing
MAX_PARALLEL =

# Directories
TARGETDIR = bin
SOURCEDIR = src
OBJECTDIR = bin/obj
INCLUDEDIR = include

STRUCT := $(shell find $(SOURCEDIR) -type d)

SOURCEDIRSTRUCT := $(filter-out %/include, $(STRUCT))
INCLUDEDIRSTRUCT := $(filter %/include, $(STRUCT))
OBJECTDIRSTRUCT := $(subst $(SOURCEDIR), $(OBJECTDIR), $(SOURCEDIRSTRUCT))

# Build type
BUILD_TYPE ?= release

# Cross compilation
CROSS_COMPILE ?=

# Compillers & Linke
CC = $(CROSS_COMPILE)gcc
CXX = $(CROSS_COMPILE)g++
LD = $(CROSS_COMPILE)gcc
AS = $(CROSS_COMPILE)as
STRIP = $(CROSS_COMPILE)strip
OBJCOPY = $(CROSS_COMPILE)objcopy
OBJDUMP = $(CROSS_COMPILE)objdump
GDB = $(CROSS_COMPILE)gdb

# Compillers & Linker flags
ASFLAGS =
CFLAGS = $(addprefix -I,$(INCLUDEDIRSTRUCT)) -std=gnu17 -O3 -W
CXXFLAGS = $(addprefix -I,$(INCLUDEDIRSTRUCT)) -std=gnu17 -O3 -W
LDFLAGS =
LDLIBS = -lc -lm -pthread

ifeq ($(BUILD_TYPE), debug)
CFLAGS += -g
CXXFLAGS += -g
LDFLAGS += -g
endif

# Target
TARGET = $(TARGETDIR)/$(APP_NAME)

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

all: clean-bin make-dir compile

compile:
	@$(MAKE) --no-print-directory -j${MAX_PARALLEL} $(TARGET)

$(TARGET): $(OBJECTS)
	@echo ---------------------------------------------------------------------------
	@echo Creating executable file \'$@\'...
	@$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)
ifeq ($(BUILD_TYPE), release)
	@$(STRIP) -g $@
endif

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.s
	@echo Compilling ASM file \'$<\' \> \'$@\'...
	@$(AS) $(ASFLAGS) -MD -o $@ $<

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.c
	@echo Compilling C file \'$<\' \> \'$@\'...
	@$(CC) $(CFLAGS) -MD -c -o $@ $<

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.cpp
	@echo Compilling C++ file \'$<\' \> \'$@\'...
	@$(CXX) $(CXXFLAGS) -MD -c -o $@ $<

debug: $(TARGET)
	$(GDB) $(TARGET)

make-dir:
	@mkdir -p $(OBJECTDIRSTRUCT)

clean-bin:
	@rm -f $(TARGET)

clean: clean-bin
	@rm -rf $(OBJECTDIR)/*

-include $(OBJECTS:.o=.d)

.PHONY: clean clean-bin make-dir debug compile all
