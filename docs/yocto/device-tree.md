### What is Device Tree?

Device tree is a data structure and language for describing hardware. To avoid reconfiguring the Linux kernel for
each platform the concept of device tree was introduced. The kernel expects detailed information about the
hardware that it runs on from the bootloader, such as U-Boot, reads the device information and configures devices
and drivers appropriately.

Internally device tree is a tree of named nodes and properties. Nodes contain properties and child nodes, while
properties are name–value pairs.

Here is a overlay used in Neutis to enable UART1. Based on this simple example we will describe a couple of sections.

```bash

/dts-v1/;
/plugin/;

/ {
        compatible = "allwinner,sun50i-h5";

        fragment@0 {
                target-path = "/aliases";
                __overlay__ {
                        serial1 = "/soc/serial@01c28400";
                };
        };

        fragment@1 {
                target = <&uart1>;
                 __overlay__ {
                        pinctrl-names = "default";
                        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
                        status = "okay";
                };
        };
};

```

The ```compatible``` property should be present in every node that represents a device. ```compatible```
is the key an operating system uses to decide which device driver to bind to a device.

The device tree fragments describe which target to overlay. In the first line we're setting which target
for this fragment will be overlayed. The ```__overlay__``` node itself contains the properties which will
be used.

The last fragment enables the UART device by setting status property and specifies pin configuration nodes
for ```pinctrl-0```. The target for the overlay is UART1.

For more information on device tree please visit [oficial specification](https://www.devicetree.org/specifications/).
