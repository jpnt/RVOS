# Choosing an appropriate hardware platform to run and emulate on QEMU

* sifive_e (SiFive Essential)
    * https://www.freertos.org/RTOS-RISC-V-FreedomStudio-QMEU.html
    * Available in qemu-system-riscv32
    * FE310-G002 microcontroller that uses E3 series chip
        * https://www.sifive.com/boards/hifive1-rev-b
        * This hardware is to be used in the theoretical study of the project

* Running on QEMU (on top of Linux)
    * Change directory to FreeRTOSv202212.01/FreeRTOS/Demo/RISC-V-Qemu-sifive_e-Eclipse-GCC
    * Install Freedom IDE
        * https://static.dev.sifive.com/dev-tools/FreedomStudio/2021.04/FreedomStudio-4.18.0.2021-04-1-x86_64-linux-ubuntu14.tar.gz
    * Follow steps from https://www.freertos.org/RTOS-RISC-V-FreedomStudio-QMEU.html to compile it
    * After successful compilation:
    ```sh
    qemu-system-riscv32 -nographic -machine sifive_e -net none \
        -chardev stdio,id=con,mux=on -serial chardev:con \
        -mon chardev=con,mode=readline -bios none \
        -smp 1 -kernel ./RTOSDemo.elf
    ```


* RISC-V based machines supported by Qemu:

    * For qemu-system-riscv32:
        * none                 empty machine
        * opentitan            RISC-V Board compatible with OpenTitan
        * sifive_e             RISC-V Board compatible with SiFive E SDK
        * sifive_u             RISC-V Board compatible with SiFive U SDK
        * spike                RISC-V Spike board (default)
        * virt                 RISC-V VirtIO board

    * For qemu-system-riscv64:
        * none                 empty machine
        * shakti_c             RISC-V Board compatible with Shakti SDK
        * sifive_e             RISC-V Board compatible with SiFive E SDK
        * sifive_u             RISC-V Board compatible with SiFive U SDK
        * spike                RISC-V Spike board (default)
        * virt                 RISC-V VirtIO board
