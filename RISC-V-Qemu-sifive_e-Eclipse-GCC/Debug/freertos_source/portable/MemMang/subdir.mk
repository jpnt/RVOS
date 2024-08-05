################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/MemMang/heap_4.c 

OBJS += \
./freertos_source/portable/MemMang/heap_4.o 

C_DEPS += \
./freertos_source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
freertos_source/portable/MemMang/heap_4.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/MemMang/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


