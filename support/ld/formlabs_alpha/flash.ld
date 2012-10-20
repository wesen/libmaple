/*
 * Formlabs Alpha (STM32F103RCT6, high density) linker script for FLASH (bootloader) builds.
 */

/*
 * Define memory spaces.
 */
MEMORY
{
  ram (rwx) : ORIGIN = 0x20000C00, LENGTH = 61K
  rom (rx)  : ORIGIN = 0x08005000, LENGTH = 236K
}

/*
 * Use medium density device vector table
 */
GROUP(libcs3_stm32_high_density.a)

REGION_ALIAS("REGION_TEXT", rom);
REGION_ALIAS("REGION_DATA", ram);
REGION_ALIAS("REGION_BSS", ram);
REGION_ALIAS("REGION_RODATA", rom);

/*
 * Define the rest of the sections
 */
_FLASH_BUILD = 1;
INCLUDE common.inc
