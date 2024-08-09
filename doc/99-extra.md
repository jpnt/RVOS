# Extra information

* Caches are organized as blocks with a defined block size -- cache line
    * Discovering cache line size in Linux, typically is 64 bytes
        ```sh
        cat /sys/devices/system/cpu/cpu0/cache/index*/coherency_line_size
        ```
    * There are tools that read these files and produce a nicer output
        ```sh
        lscpu -C
        ```
        e.g. on my machine with a Intel i5-1135G7
        ```txt
                NAME ONE-SIZE ALL-SIZE WAYS TYPE        LEVEL  SETS PHY-LINE COHERENCY-SIZE
        L1d       48K     192K   12 Data            1    64        1             64
        L1i       32K     128K    8 Instruction     1    64        1             64
        L2       1,3M       5M   20 Unified         2  1024        1             64
        L3         8M       8M    8 Unified         3 16384        1             64
        ```

# Curiosities

* How a real time clock (RTC) works?
    * https://youtu.be/cCBu2VN0fu0?si=gIg-uPtx2GFrovnM&t=168

# Links

* Useful links to keep in mind:
   * https://github.com/qemu/qemu/blob/master/target/riscv/cpu.c
   * https://lore.kernel.org/all/15d848da-6ebe-4b85-bd7e-e2a04abe0399@Spark/T/
   * https://www.diva-portal.org/smash/get/diva2:1714139/FULLTEXT01.pdf
   * https://static.sched.com/hosted_files/riscvsummit2021/d8/Perf_on_riscv_summit_atish.pdf
