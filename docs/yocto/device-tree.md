## What is Device Tree?

Device tree is a data structure and language for describing hardware.
In order to not reconfigure the linux kernel for each platform the concept
of device tree was introduced. The kernel expects detailed information
about the hardware that it runs on from the bootloader, such as U-Boot,
reads the device information and configures devices and drivers appropriately.
