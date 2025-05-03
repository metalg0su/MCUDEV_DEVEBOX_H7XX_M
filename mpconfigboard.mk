#USE_H750 ?= 0

MCU_SERIES = h7

#ifeq ($(USE_H750),1)
#CMSIS_MCU = STM32H750xx
#AF_FILE = boards/stm32h750_af.csv  # TODO
#else
CMSIS_MCU = STM32H743xx
AF_FILE = boards/stm32h743_af.csv
#endif

# When not using Mboot the ISR text goes first, then the rest after the filesystem
LD_FILES = boards/stm32h743.ld boards/common_basic.ld
TEXT0_ADDR = 0x08000000

# MicroPython settings
MICROPY_PY_LWIP = 1
MICROPY_PY_USSL = 0
MICROPY_SSL_MBEDTLS = 0
