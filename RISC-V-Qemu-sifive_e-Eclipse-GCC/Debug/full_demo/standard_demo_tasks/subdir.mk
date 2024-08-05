################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/EventGroupsDemo.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/TaskNotify.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/TimerDemo.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/blocktim.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/dynamic.c \
/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/recmutex.c 

OBJS += \
./full_demo/standard_demo_tasks/EventGroupsDemo.o \
./full_demo/standard_demo_tasks/TaskNotify.o \
./full_demo/standard_demo_tasks/TimerDemo.o \
./full_demo/standard_demo_tasks/blocktim.o \
./full_demo/standard_demo_tasks/dynamic.o \
./full_demo/standard_demo_tasks/recmutex.o 

C_DEPS += \
./full_demo/standard_demo_tasks/EventGroupsDemo.d \
./full_demo/standard_demo_tasks/TaskNotify.d \
./full_demo/standard_demo_tasks/TimerDemo.d \
./full_demo/standard_demo_tasks/blocktim.d \
./full_demo/standard_demo_tasks/dynamic.d \
./full_demo/standard_demo_tasks/recmutex.d 


# Each subdirectory must supply rules for building sources it contributes
full_demo/standard_demo_tasks/EventGroupsDemo.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/EventGroupsDemo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/standard_demo_tasks/TaskNotify.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/TaskNotify.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/standard_demo_tasks/TimerDemo.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/TimerDemo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/standard_demo_tasks/blocktim.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/blocktim.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/standard_demo_tasks/dynamic.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/dynamic.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/standard_demo_tasks/recmutex.o: /home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/Minimal/recmutex.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc -DDONT_USE_PLIC -DDONT_USE_M_TIME -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/Common/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC/freedom-e-sdk/env/freedom-e300-hifive1" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/include" -I"/home/sergio/FreeRTOS_copy/FreeRTOS/FreeRTOS/Source/portable/GCC/RISC-V" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac_zicsr -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -fno-builtin-printf  -Wno-unused-parameter -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


