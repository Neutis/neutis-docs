
To start working with Neutis, flash it with a Linux image.
You can download the latest dev image below:

| Dev image | 
|------------|
|[Download](http://files.emlid.com/neutis/firmware/neutis-image-v1.0.4.zip)|

Neutis Dev Kit includes a heatsink, attach it by the following way:

<a href="../../img/intro/heatsink_attachment_neutis.png" target="_blank"> ![scheme](../../img/intro/heatsink_attachment_neutis.png)</a>

!!! tip "Yocto"
    Learn more about Yocto in [the corresponding section](../yocto/why.md).

## Flashing

To flash Neutis you'll need to boot it in a flashing(FEL) mode.

!!! tip "FEL mode"
    Learn more about flashing mode in [the corresponding section](../hardware-integration/fel.md).

### Entering flashing(FEL) mode

* Supply power to Neutis devboard from your PC over the USB cable
* Push the _UBOOT_ button and hold it
* Push and release the _RESET_ button
* Release the _UBOOT_ button

![fel_1](../../img/intro/fel_1.gif)</a>

Alternatively, you can enter flashing mode by holding the _UBOOT_ button and powering Neutis devboard via micro-USB cable.

![fel_2](../../img/intro/fel_2.gif)</a>

### Neutis Flasher

Use [**Neutis Manufacturing Flash Tool**](../flasher/gui.md) to flash Neutis.
