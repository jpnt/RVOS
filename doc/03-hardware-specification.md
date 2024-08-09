# Before Must Knows

* Memory Hierarchy
  * From fastest to slowest:
    * Registers => Cache (L1i/d, L2, L3) => Main memory => Disk (Flash, Traditional) => Remote (Internet)

* Set-associative vs Direct Mapped Cache
  * Direct Mapped Cache
    * Each block of memory maps to exactly one cache line. If multiple blocks
      map to the same line, the most recent one replaces the previous one.
    * Imagine a cache with 4 lines. Memory addresses 0x0, 0x4, 0x8, and 0xC all
      map to the same cache line. If you access 0x0, it stays in the cache until
      0x4 is accessed, which replaces it.
  * Set-associative Cache
    * Each block of memory can map to any line within a set of cache lines. For example,
      in a 2-way set-associative cache with 4 lines, there are 2 sets of 2 lines each.
      A block can be placed in either line within its set.
    * Imagine a 2-way set-associative cache with 4 lines divided into 2 sets.
      Memory addresses 0x0 and 0x4 map to Set 1, while 0x8 and 0xC map to Set 2.
      Accessing 0x0 and 0x4 will fill both lines in Set 1. If 0x8 is accessed, it
      will fill one line in Set 2 without replacing data in Set 1.

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

* 32.768 MHz real-time clock (rtc)
  * 32768 cycles per sec

# Links

* https://sifive.cdn.prismic.io/sifive/034760b5-ac6a-4b1c-911c-f4148bb2c4a5_fe310-g002-v1p5.pdf (Chapter 3, 16)
* https://www.youtube.com/watch?v=Bz49xnKBH_0 (Introduction to Cache Memory)
* https://www.youtube.com/watch?v=zocwH0g-qQM (Direct Mapped Caches)
* https://www.youtube.com/watch?v=gr5M9CULUZw (Set-associative Caches)
