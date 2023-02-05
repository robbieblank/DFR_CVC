################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FatFs/test/ff_test.c 

OBJS += \
./Middlewares/FatFs/test/ff_test.o 

C_DEPS += \
./Middlewares/FatFs/test/ff_test.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FatFs/test/%.o Middlewares/FatFs/test/%.su: ../Middlewares/FatFs/test/%.c Middlewares/FatFs/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32 -DSTM32F7 -DSTM32F767ZITx -DNUCLEO_F767ZI -DDEBUG -DSTM32F767xx -DUSE_HAL_DRIVER -DINCLUDE_FATFS -DUSE_RTOS_SYSTICK -c -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/Template/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/portable/GCC/ARM_CM7" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/MTP/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/include" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/CDC/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Core/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/AUDIO/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FreeRTOS/Source/CMSIS_RTOS" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/STM32_USB_Host_Library/Class/HID/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/BSP/STM32F7xx_Nucleo_144" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/CMSIS/device" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/HAL_Driver/Inc/Legacy" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/CMSIS/core" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Drivers/HAL_Driver/Inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Applications/inc" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src/drivers" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/src/option" -I"/Users/robbieblank/Desktop/DFR/DFR_CVC/Middlewares/FatFs/test" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FatFs-2f-test

clean-Middlewares-2f-FatFs-2f-test:
	-$(RM) ./Middlewares/FatFs/test/ff_test.d ./Middlewares/FatFs/test/ff_test.o ./Middlewares/FatFs/test/ff_test.su

.PHONY: clean-Middlewares-2f-FatFs-2f-test

