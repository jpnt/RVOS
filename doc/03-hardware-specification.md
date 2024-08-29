# Before Must Knows

* Memory Hierarchy
  * From fastest to slowest:
    * Registers => Cache (L1i/d, L2, L3) => Main memory => Disk (Flash, Traditional) => Remote (Internet)

* Fully Associative Cache vs Direct Mapped Cache vs Set-Associative Cache
  * All 3 are cache mapping algorithms

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

* 32.768 kHz real-time clock (rtc)
  * 32768 cycles per sec

# Links

* https://sifive.cdn.prismic.io/sifive/034760b5-ac6a-4b1c-911c-f4148bb2c4a5_fe310-g002-v1p5.pdf (Chapter 3, 16)
* https://www.youtube.com/watch?v=Bz49xnKBH_0 (Introduction to Cache Memory)
* https://www.youtube.com/watch?v=A0vR-ks3hsQ (Fully Associative Caches)
* https://www.youtube.com/watch?v=zocwH0g-qQM (Direct Mapped Caches)
* https://www.youtube.com/watch?v=gr5M9CULUZw (Set-associative Caches)
