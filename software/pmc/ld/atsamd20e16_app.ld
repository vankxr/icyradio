ENTRY(_reset_isr)

_min_heap_size = 0x800;
_min_stack_size = 0x400;

MEMORY
{
    irom0  (rx)     : ORIGIN = 0x00000000, LENGTH = 0x010000
    irom1  (rx)     : ORIGIN = 0x00000000, LENGTH = 0x000000
    drom0  (r)      : ORIGIN = 0x00000000, LENGTH = 0x000000
    iram0  (rwx)    : ORIGIN = 0x20000000, LENGTH = 0x000000
    dram0  (rw)     : ORIGIN = 0x20000000, LENGTH = 0x002000
}

/* Initial stack pointer (must be 8 byte aligned) */
_estack = (ORIGIN(dram0) + LENGTH(dram0)) & ~7;

SECTIONS
{
    /* ISR Vectors */
    .isr_vector :
    {
        . = ALIGN(4);
        _svect = .;

        KEEP(*(.isr_vector))

        . = ALIGN(4);
        _evect = .;
    } > irom0

    /* Flash Code */
    .text :
    {
        . = ALIGN(4);
        _stext = .;

        *(.text)           /* .text sections (code) */
        *(.text*)          /* .text* sections (code) */
        *(.rodata)         /* .rodata sections (constants, strings, etc.) */
        *(.rodata*)        /* .rodata* sections (constants, strings, etc.) */
        *(.glue_7)         /* glue arm to thumb code */
        *(.glue_7t)        /* glue thumb to arm code */

        KEEP(*(.init))
        KEEP(*(.fini))

        . = ALIGN(4);
        _etext = .;
    } > irom0

    /* ARM */
    .ARM.extab :
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > irom0
    .ARM :
    {
        __exidx_start = .;

        *(.ARM.exidx*)

        __exidx_end = .;
    } > irom0
    .ARM.attributes :
    {
        *(.ARM.attributes)
    } > irom0

    /* C Array init/fini */
    .preinit_array :
    {
        PROVIDE_HIDDEN(__preinit_array_start = .);
        KEEP(*(.preinit_array*))
        PROVIDE_HIDDEN(__preinit_array_end = .);
    } > irom0
    .init_array :
    {
        PROVIDE_HIDDEN(__init_array_start = .);
        KEEP(*(SORT(.init_array.*)))
        KEEP(*(.init_array*))
        PROVIDE_HIDDEN(__init_array_end = .);
    } > irom0
    .fini_array :
    {
        PROVIDE_HIDDEN(__fini_array_start = .);
        KEEP(*(.fini_array*))
        KEEP(*(SORT(.fini_array.*)))
        PROVIDE_HIDDEN(__fini_array_end = .);
    } > irom0

    /* RAM Code */
    _siiram0 = LOADADDR(.iram0.text);

    .iram0.text :
    {
        . = ALIGN(4);
        _siram0 = .;

        *(.iram0.text)           /* .text sections (code) */
        *(.iram0.text*)          /* .text* sections (code) */

        . = ALIGN(4);
        _eiram0 = .;
    } > iram0 AT > irom0

    /* Bootloader Code */
    .irom1.text :
    {
        . = ALIGN(4);
        _sirom1 = .;

        *(.irom1.text)           /* .text sections (code) */
        *(.irom1.text*)          /* .text* sections (code) */

        . = ALIGN(4);
        _eirom1 = .;
    } > irom1

    /* RAM Data */
    _sidata = LOADADDR(.data);

    .data :
    {
        . = ALIGN(4);
        _sdata = .;        /* create a global symbol at data start */

        *(.data)           /* .data sections */
        *(.data*)          /* .data* sections */

        . = ALIGN(4);
        _edata = .;        /* define a global symbol at data end */
    } > dram0 AT > irom0

    /* Flash Data */
    .drom0.data :
    {
        . = ALIGN(4);
        _sdrom0 = .;

        *(.drom0.data)           /* .data sections */
        *(.drom0.data*)          /* .data* sections */

        . = ALIGN(4);
        _edrom0 = .;
    } > drom0

    /* BSS */
    .bss :
    {
        . = ALIGN(4);
        _sbss = .;         /* define a global symbol at bss start */
        __bss_start__ = _sbss;

        *(.bss)
        *(.bss*)
        *(COMMON)

        . = ALIGN(4);
        _ebss = .;         /* define a global symbol at bss end */
        __bss_end__ = _ebss;
    } > dram0

    PROVIDE(end = _ebss);
    PROVIDE(_end = _ebss);

    /* Ensure minimum stack & heap */
    .min_heap_stack :
    {
        . = ALIGN(4);

        . = . + _min_heap_size;
        . = . + _min_stack_size;

        . = ALIGN(4);
    } > dram0

    /* Remove unused code from libs */
    /DISCARD/ :
    {
        libc.a(*)
        libm.a(*)
        libgcc.a(*)
    }
}
