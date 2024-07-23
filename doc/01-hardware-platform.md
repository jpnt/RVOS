# Choosing an appropriate hardware platform to run and emulate on QEMU

* SiFive HiFive Unleashed (sifive_u)
    * https://www.qemu.org/docs/master/system/riscv/sifive_u.html
    * TBD


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