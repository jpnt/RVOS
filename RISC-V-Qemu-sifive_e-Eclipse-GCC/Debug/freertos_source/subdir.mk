################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/event_groups.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/list.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/queue.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/stream_buffer.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/tasks.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/timers.c 

OBJS += \
./freertos_source/event_groups.o \
./freertos_source/list.o \
./freertos_source/queue.o \
./freertos_source/stream_buffer.o \
./freertos_source/tasks.o \
./freertos_source/timers.o 

C_DEPS += \
./freertos_source/event_groups.d \
./freertos_source/list.d \
./freertos_source/queue.d \
./freertos_source/stream_buffer.d \
./freertos_source/tasks.d \
./freertos_source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
freertos_source/event_groups.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freertos_source/list.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freertos_source/queue.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freertos_source/stream_buffer.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/stream_buffer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freertos_source/tasks.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freertos_source/timers.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


