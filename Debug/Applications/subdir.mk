################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Applications/cvc_can.c \
../Applications/cvc_logging.c \
../Applications/cvc_sd.c \
../Applications/cvc_spi.c \
../Applications/cvc_state_machine.c \
../Applications/cvc_tasks.c \
../Applications/dash.c \
../Applications/demo.c \
../Applications/main.c \
../Applications/pm100.c \
../Applications/stm32f7xx_it.c \
../Applications/synchronous.c \
../Applications/syscalls.c \
../Applications/system_stm32f7xx.c \
../Applications/torque_command.c 

OBJS += \
./Applications/cvc_can.o \
./Applications/cvc_logging.o \
./Applications/cvc_sd.o \
./Applications/cvc_spi.o \
./Applications/cvc_state_machine.o \
./Applications/cvc_tasks.o \
./Applications/dash.o \
./Applications/demo.o \
./Applications/main.o \
./Applications/pm100.o \
./Applications/stm32f7xx_it.o \
./Applications/synchronous.o \
./Applications/syscalls.o \
./Applications/system_stm32f7xx.o \
./Applications/torque_command.o 

C_DEPS += \
./Applications/cvc_can.d \
./Applications/cvc_logging.d \
./Applications/cvc_sd.d \
./Applications/cvc_spi.d \
./Applications/cvc_state_machine.d \
./Applications/cvc_tasks.d \
./Applications/dash.d \
./Applications/demo.d \
./Applications/main.d \
./Applications/pm100.d \
./Applications/stm32f7xx_it.d \
./Applications/synchronous.d \
./Applications/syscalls.d \
./Applications/system_stm32f7xx.d \
./Applications/torque_command.d 


# Each subdirectory must supply rules for building sources it contributes
Applications/%.o Applications/%.su: ../Applications/%.c Applications/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32 -DSTM32F7 -DSTM32F767ZITx -DNUCLEO_F767ZI -DDEBUG -DSTM32F767xx -DUSE_HAL_DRIVER -DINCLUDE_FATFS -DUSE_RTOS_SYSTICK -c -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/Template/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/portable/GCC/ARM_CM7" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/MTP/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/include" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Core/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/AUDIO/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/HID/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/BSP/STM32F7xx_Nucleo_144" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/CMSIS/device" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/HAL_Driver/Inc/Legacy" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/CMSIS/core" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/HAL_Driver/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Applications/inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src/drivers" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src/option" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/test" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Applications

clean-Applications:
	-$(RM) ./Applications/cvc_can.d ./Applications/cvc_can.o ./Applications/cvc_can.su ./Applications/cvc_logging.d ./Applications/cvc_logging.o ./Applications/cvc_logging.su ./Applications/cvc_sd.d ./Applications/cvc_sd.o ./Applications/cvc_sd.su ./Applications/cvc_spi.d ./Applications/cvc_spi.o ./Applications/cvc_spi.su ./Applications/cvc_state_machine.d ./Applications/cvc_state_machine.o ./Applications/cvc_state_machine.su ./Applications/cvc_tasks.d ./Applications/cvc_tasks.o ./Applications/cvc_tasks.su ./Applications/dash.d ./Applications/dash.o ./Applications/dash.su ./Applications/demo.d ./Applications/demo.o ./Applications/demo.su ./Applications/main.d ./Applications/main.o ./Applications/main.su ./Applications/pm100.d ./Applications/pm100.o ./Applications/pm100.su ./Applications/stm32f7xx_it.d ./Applications/stm32f7xx_it.o ./Applications/stm32f7xx_it.su ./Applications/synchronous.d ./Applications/synchronous.o ./Applications/synchronous.su ./Applications/syscalls.d ./Applications/syscalls.o ./Applications/syscalls.su ./Applications/system_stm32f7xx.d ./Applications/system_stm32f7xx.o ./Applications/system_stm32f7xx.su ./Applications/torque_command.d ./Applications/torque_command.o ./Applications/torque_command.su

.PHONY: clean-Applications

