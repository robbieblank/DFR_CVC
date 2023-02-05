################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS/Source/croutine.c \
../Middlewares/FreeRTOS/Source/event_groups.c \
../Middlewares/FreeRTOS/Source/list.c \
../Middlewares/FreeRTOS/Source/queue.c \
../Middlewares/FreeRTOS/Source/tasks.c \
../Middlewares/FreeRTOS/Source/timers.c 

OBJS += \
./Middlewares/FreeRTOS/Source/croutine.o \
./Middlewares/FreeRTOS/Source/event_groups.o \
./Middlewares/FreeRTOS/Source/list.o \
./Middlewares/FreeRTOS/Source/queue.o \
./Middlewares/FreeRTOS/Source/tasks.o \
./Middlewares/FreeRTOS/Source/timers.o 

C_DEPS += \
./Middlewares/FreeRTOS/Source/croutine.d \
./Middlewares/FreeRTOS/Source/event_groups.d \
./Middlewares/FreeRTOS/Source/list.d \
./Middlewares/FreeRTOS/Source/queue.d \
./Middlewares/FreeRTOS/Source/tasks.d \
./Middlewares/FreeRTOS/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/Source/%.o Middlewares/FreeRTOS/Source/%.su: ../Middlewares/FreeRTOS/Source/%.c Middlewares/FreeRTOS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32 -DSTM32F7 -DSTM32F767ZITx -DNUCLEO_F767ZI -DDEBUG -DSTM32F767xx -DUSE_HAL_DRIVER -DINCLUDE_FATFS -DUSE_RTOS_SYSTICK -c -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/Template/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/portable/GCC/ARM_CM7" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/MTP/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/include" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Core/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/AUDIO/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/HID/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/BSP/STM32F7xx_Nucleo_144" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/CMSIS/device" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/HAL_Driver/Inc/Legacy" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/CMSIS/core" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/HAL_Driver/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Applications/inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src/drivers" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src/option" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/test" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2f-Source

clean-Middlewares-2f-FreeRTOS-2f-Source:
	-$(RM) ./Middlewares/FreeRTOS/Source/croutine.d ./Middlewares/FreeRTOS/Source/croutine.o ./Middlewares/FreeRTOS/Source/croutine.su ./Middlewares/FreeRTOS/Source/event_groups.d ./Middlewares/FreeRTOS/Source/event_groups.o ./Middlewares/FreeRTOS/Source/event_groups.su ./Middlewares/FreeRTOS/Source/list.d ./Middlewares/FreeRTOS/Source/list.o ./Middlewares/FreeRTOS/Source/list.su ./Middlewares/FreeRTOS/Source/queue.d ./Middlewares/FreeRTOS/Source/queue.o ./Middlewares/FreeRTOS/Source/queue.su ./Middlewares/FreeRTOS/Source/tasks.d ./Middlewares/FreeRTOS/Source/tasks.o ./Middlewares/FreeRTOS/Source/tasks.su ./Middlewares/FreeRTOS/Source/timers.d ./Middlewares/FreeRTOS/Source/timers.o ./Middlewares/FreeRTOS/Source/timers.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2f-Source

