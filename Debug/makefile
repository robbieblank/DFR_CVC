################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include Middlewares/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/FreeRTOS/Source/portable/GCC/ARM_CM7/subdir.mk
-include Middlewares/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
-include Middlewares/FreeRTOS/Source/subdir.mk
-include Middlewares/FatFs/test/subdir.mk
-include Middlewares/FatFs/src/option/subdir.mk
-include Middlewares/FatFs/src/drivers/subdir.mk
-include Middlewares/FatFs/src/subdir.mk
-include Drivers/HAL_Driver/Src/Legacy/subdir.mk
-include Drivers/HAL_Driver/Src/subdir.mk
-include Drivers/BSP/STM32F7xx_Nucleo_144/subdir.mk
-include Applications/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := dfr_cvc
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
dfr_cvc.elf \

MAP_FILES += \
dfr_cvc.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
dfr_cvc.list \

OBJCOPY_BIN += \
dfr_cvc.bin \


# All Target
all: main-build

# Main-build Target
main-build: dfr_cvc.elf secondary-outputs

# Tool invocations
dfr_cvc.elf dfr_cvc.map: $(OBJS) $(USER_OBJS) /Users/robbieblank/Desktop/DFR/DFR_CVC/LinkerScript.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "dfr_cvc.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"/Users/robbieblank/Desktop/DFR/DFR_CVC/LinkerScript.ld" --specs=nosys.specs -Wl,-Map="dfr_cvc.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

dfr_cvc.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "dfr_cvc.list"
	@echo 'Finished building: $@'
	@echo ' '

dfr_cvc.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "dfr_cvc.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout dfr_cvc.bin dfr_cvc.elf dfr_cvc.list dfr_cvc.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
