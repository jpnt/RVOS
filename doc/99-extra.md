# Extra information

* Caches are organized as blocks with a defined block size -- cache line
    * Discovering cache line size in Linux, typically is 64 bytes
        ```sh
        cat /sys/devices/system/cpu/cpu0/cache/index*/coherency_line_size
        ```
