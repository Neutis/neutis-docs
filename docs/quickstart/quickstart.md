
To start working with Neutis, flash it with a Linux image.
You can download the latest dev image below:

| Dev image | 
|------------|
| [Download](https://files.emlid.com/)   | 
| [md5](https://files.emlid.com/)        | 


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

### GUI

[Download Neutis Flasher]()

- Screenshot with the waiting interface
- Screenshot with the detected device
- Screenshot with image selection
- Screenshot with the flashing process
- Screenshot with "Done"

## Booting

- Reset the Neutis devboard (photo)
- The loading process is initiated (screenshot of screen with Linux booting)
- [Connect over serial](../connectivity/usb-serial.md) to see the output

!!! tip "Connectivity"
    There are other ways to connect to Neutis. Explore other connectivity options [in the corresponding section](../connectivity/connectivity.md).
