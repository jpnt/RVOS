# Installing FreeRTOS for RISC-V on x86_64 Linux using QEMU

## 1. Prerequisites

* **Install RISC-V GNU toolchain**
    * To cross-compile files to RISC-V on x86_64
    * https://github.com/riscv-collab/riscv-gnu-toolchain
    * Compile riscv toolchain linked to newlib (C library for embedded systems).
    * After installing the toolchain prerequisites mentioned in the link, we recomend using the following commands to install / compile the toolchain:
    ```sh
    ./configure --prefix=/opt/riscv --enable-multilib --with-multilib-generator=\
        "rv32i-ilp32--;rv32im-ilp32--;rv32imac-ilp32--;rv64gc-lp64d--" --with-cmodel=medany
    make -j$(nproc)
    ```
    * Verify multilib support: /opt/riscv/bin/riscv64-unknown-elf-gcc -print-multi-lib
    * *Note*: If using WSL you make encounter the following error message: /bin/bash^M: bad interpreter: No such file or directory.
    
         * This means that the shell script file has wrong line endings, follow one of the possible fixes outlined in this link: https://www.howtogeek.com/884769/bad-interpreter-no-such-file-or-directory-linux-error/  

* **Install QEMU**
    * To emulate RISC-V hardware on x86_64
    * https://github.com/qemu/qemu
    * `qemu` package in Void Linux
    * We recommend installing the `qemu-full` package in arch linux:
    ```sh
    sudo pacman -S qemu-full
    ```
    * Perform sanity check: 
    ```sh
    which qemu-system-riscv32
    which qemu-system-riscv64
    ```

## 2. Downloading FreeRTOS source code

* Download at: https://www.freertos.org/a00104.html
    * Also available at github: https://github.com/FreeRTOS/FreeRTOS
    * For this project its best to stick with a stable version,
      FreeRTOSv202212.01 was the version used.
    * Source code organization: https://www.freertos.org/a00017.html
    * **Other useful links:** 
       * Quick start: https://www.freertos.org/FreeRTOS-quick-start-guide.html
       * FreeRTOS on RISC-V: https://www.freertos.org/Using-FreeRTOS-on-RISC-V.html


## 3. Compiling FreeRTOS and running it on QEMU

* Test a demo first
    * Change directory to FreeRTOSv202212.01/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC
    * **Read instructions in the README.md in the directory**
    * *Important step:* Add path of toolchain that is described above section, such as: export PATH="/opt/riscv/bin:${PATH}"
    * Edit Makefile and set toolchain if necessary, then compile. Instructions at README.md
        * If error: main.c:53: Error: unrecognized opcode `csrw mtvec,a5', extension `zicsr' required
            * Change in Makefile: `-march=rv32imac` to `-march=rv32imac_zicsr`
    * After successful compilation, Run on QEMU:
    ```sh
    qemu-system-riscv32 -nographic -machine virt -net none \
        -chardev stdio,id=con,mux=on -serial chardev:con \
        -mon chardev=con,mode=readline -bios none \
        -smp 4 -kernel ./build/gcc/output/RTOSDemo.elf
    ```
