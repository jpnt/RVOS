# Before Must Knows

* Memory Hierarchy
  * From fastest to slowest:
    * Registers => Cache (L1i/d, L2, L3) => Main memory => Disk (Flash, Traditional) => Remote (Internet)

* Set-associate vs direct mapped cache

# E31 RISC-V Core

* 32-bit with a singleissue in-order execution pipeline, with a peak sustainable 
  execution rate of one instruction per clock cycle
  * pipeline consists of 5 stages: instruction fetch, instruction decode and 
    register fetch, execute, data memory access, and register writeback

* supports Machine and User privilege modes as well as standard Multiply, Atomic, and 
  Compressed RISC‑V extensions (RV32IMAC).

* has a 2-way set-associative 16 KiB L1 instruction cache and a 16 KiB L1 DTIM
  * The access latency from a core to its own DTIM is two clock cycles for full words 
    and three clock cycles for smaller quantities

# Links

* https://sifive.cdn.prismic.io/sifive/034760b5-ac6a-4b1c-911c-f4148bb2c4a5_fe310-g002-v1p5.pdf (Chapter 3)
