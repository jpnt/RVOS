# Extra information

* Caches are organized as blocks with a defined block size -- cache line
    * Discovering cache line size in Linux, typically is 64 bytes
        ```sh
        cat /sys/devices/system/cpu/cpu0/cache/index*/coherency_line_size
        ```


* Useful links to keep in mind:
   * https://github.com/qemu/qemu/blob/master/target/riscv/cpu.c
   * https://lore.kernel.org/all/15d848da-6ebe-4b85-bd7e-e2a04abe0399@Spark/T/
   * https://www.diva-portal.org/smash/get/diva2:1714139/FULLTEXT01.pdf
   * https://static.sched.com/hosted_files/riscvsummit2021/d8/Perf_on_riscv_summit_atish.pdf
