# Installing FreeRTOS for RISC-V on x86_64 Linux using QEMU

## 0. Prerequisites

* Install RISC-V GNU toolchain
    * To cross-compile files to RISC-V on x86_64
    * https://github.com/riscv-collab/riscv-gnu-toolchain
    * Compile riscv toolchain linked to newlib (C library for embedded systems).
        * ./configure --prefix=/opt/riscv --enable-multilib --with-multilib-generator="rv32i-ilp32--;rv32im-ilp32--;rv32imac-ilp32--;rv64gc-lp64d--" --with-cmodel=medany
        * sudo make -j$(nproc)
    * Verify multilib support: /opt/riscv/bin/riscv64-unknown-elf-gcc -print-multi-lib

* Install QEMU
    * To emulate RISC-V hardware on x86_64
    * https://github.com/qemu/qemu
    * `qemu` package in Void Linux

* Download FreeRTOS source code
    * https://www.freertos.org
    * Quick Start: https://www.freertos.org/FreeRTOS-quick-start-guide.html
    * FreeRTOS on RISC-V: https://www.freertos.org/Using-FreeRTOS-on-RISC-V.html

## 2. Downloading FreeRTOS source code

* Download at: https://www.freertos.org/a00104.html
    * Also available at github: https://github.com/FreeRTOS/FreeRTOS
    * For this project its best to stick with a stable version,
      FreeRTOSv202212.01 was the version used.
    * Source code organization: https://www.freertos.org/a00017.html

* Test a demo first
    * FreeRTOSv202212.01/FreeRTOS/Demo/RISC-V-Qemu-virt_GCC
    * or FreeRTOSv202212.01/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC
    * Edit Makefile and set toolchain if necessary, then compile. Instructions at README.md
    * If error: main.c:53: Error: unrecognized opcode `csrw mtvec,a5', extension `zicsr' required
        * Change in Makefile: `-march=rv32imac` to `-march=rv32imac_zicsr`

## 3. Real hardware platform to be emulated

