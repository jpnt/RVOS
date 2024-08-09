# Before Must Knows

* RISC-V privileged and unprivileged architecture 101
    * unprivileged: general purpose computation available in 'user mode', where
      application code (user space) runs. CPUs tipically spend more time here.

    * privileged: privileged modes: 'machine mode' -- most trusted code; And
      'supervisor mode' -- provides support for Operating Systems such as Linux,
      FreeBSD and Windows. They add more functionality compared to unprivileged ISA,
      such as handle interrupts and perform I/O. SYSTEM opcode is used to encode
      privileged instructions in the RISC-V ISA.

# Control and Status Registers (CSRs)

* 'Zicsr' extension for CSR instructions
    * defines CSRs (Control and Status registers)

* CSRs are a form of memory-mapped register, but not every memory-mapped register is a CSR
    * TODO



# RISC-V Core Timer Interrupt

* mtime
    * TODO

* mtimecmp
    * TODO

* Links
    * https://riscv.org/wp-content/uploads/2016/07/Tue0900_RISCV-20160712-Interrupts.pdf
    * https://danielmangum.com/posts/risc-v-bytes-timer-interrupts/
    * https://www.youtube.com/watch?v=pXwnRqehZV8
    * https://github.com/riscv/riscv-isa-manual
