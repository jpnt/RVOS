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

* CSRs
    * special registers in the RISC-V architecture used to control and monitor 
      the processor's state and performance
    * form of memory-mapped register (however not every memory-mapped is a CSR)
    * accessed using specific instructions, their addresses are encoded within a
      12-bit field (4096 unique addresses)

* Memory-mapped registers (MMRs)
    * registers that are mapped to specific memory addresses rather than being part of the CSR space
    * access to these registers is done through regular memory read and write operations, 
      not through special CSR instructions.

* CSRs vs MMRs
    * TODO

# RISC-V Core Timer Interrupt

* mtime
    * TODO

* mtimecmp
    * TODO

# Links

* https://riscv.org/wp-content/uploads/2016/07/Tue0900_RISCV-20160712-Interrupts.pdf
* https://danielmangum.com/posts/risc-v-bytes-timer-interrupts/
* https://www.youtube.com/watch?v=pXwnRqehZV8
* https://github.com/riscv/riscv-isa-manual
