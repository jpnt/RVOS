# Before Must Knows

* RISC-V privileged and unprivileged architecture 101
    * unprivileged: general purpose computation available in 'user mode', where
      application code (user space) runs. CPUs tipically spend more time here.

    * privileged: privileged modes: 'machine mode' -- most trusted code; And
      'supervisor mode' -- provides support for Modern Operating Systems such as Linux,
      FreeBSD and Windows. They add more functionality compared to unprivileged ISA,
      such as handle interrupts, perform I/O and access CSRs. SYSTEM opcode is used to encode
      privileged instructions in the RISC-V ISA.
        * All RISC-V processors implement machine mode.

* In a 32-bit architecture, 64-bit values are stored using two consecutive 32-bit memory 
  locations and are manipulated using instructions that handle them in two parts (high and low).

* A tick is the Operating System's time unit, typically longer and less precise, 
  while a CPU cycle is the shortest unit of time defined by the processor's clock frequency.

* There are 3 standard sources of interrupts
    1. Software: triggered by storing to a memory-mapped register (interprocessor interrupt)
    2. Timer: raised when a hart's (hardware thread) time comparator (mtimecmp) >= real-time counter (mtime)
    3. External: raised by platform-level interrupt controller (where external devices are attached)

# Control and Status Registers (CSRs)

* 'Zicsr' extension for CSR instructions
    * defines CSRs (Control and Status registers)

* Memory-mapped registers (MMRs)
    * registers that are mapped to specific memory addresses rather than being part of the CSR space
    * access to these registers is done through regular memory read and write operations, 
      not through special CSR instructions.

* CSRs
    * special registers in the RISC-V architecture used to control and monitor 
      the processor's state and performance
    * form of memory-mapped register (however not every memory-mapped is a CSR)
    * accessed using specific instructions, their addresses are encoded within a
      12-bit field (4096 unique addresses)

# RISC-V Core Timer Interrupt

* mtime & mtimecmp registers
    * mtime is a 64 bit R/W register that contains the number of cycles counted from rtclk
    * if mtime >= mtimecmp, interrupt is generated
    * mtime & mtimecmp are NOT CSRs but memory mapped

# Links

* https://riscv.org/wp-content/uploads/2016/07/Tue0900_RISCV-20160712-Interrupts.pdf
* https://danielmangum.com/posts/risc-v-bytes-timer-interrupts/
* https://danielmangum.com/posts/risc-v-bytes-privilege-levels/#control-and-status-registers-csrs
* https://www.youtube.com/watch?v=pXwnRqehZV8
* https://github.com/riscv/riscv-isa-manual
* http://www.riscvbook.com
* https://www.freertos.org/Using-FreeRTOS-on-RISC-V
