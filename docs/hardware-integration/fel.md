## What is flashing(FEL) mode?

FEL is a low-level subroutine that implements a special USB protocol for initial programming and recovery of devices. It is stored in the BootROM,
write-protected flash inside the chip. BootROM contains the very first code which is executed by the Allwinner devices.

!!! note
    Your device needs to be attached to a host by using a USB cable,
    connected to a port where your device appears as a USB slave
    (USB-OTG port on your Neutis).

## How to make Allwinner boot to FEL?

When your device boots up, it first executes the very first instructions
in BROM. It jumps to eGON.BRM address where some low-level procedures are
performed to set up CPU, clocks, etc. After that the FEL pin is checked:

* If it is low, then your device enters FEL mode.
* If the pin is high, it tries to boot from the media devices.

!!! note
    If a device fails to boot from the media device (MMC or internal NAND flash),
    FEL mode is also triggered.

There are many ways of entering FEL mode:

* By pressing a special button.
* Using a special SD card image which just jumps to FEL.
* By having no valid boot image.

!!! note
    The FEL pin by default is pulled high. However, when you push 'U-BOOT' button on
    your Neutis Devboard, the pin becomes low.

## How do we flash software?

We're loading a minimal Linux image through FEL protocol. This image only exports eMMC as a mass storage device. This way we can flash eMMC.

## Boot sequence

<div style="text-align: center;"><img src="../../img/intro/boot-sequence.png" style="width: 700px;"></div><br>

Generally, the Allwinner device tries to boot in the following order if FEL pin is high:

* SD Card0 also known as MMC0
* Internal NAND flash also known as eMMC
* SD Card2 also known as MMC2
* SPI connected NOR flash also known as SPI
* If all above fails to boot, FEL is executed

If Magic signature is found at the right location on either MMC or eMMC,
the BROM will try to load U-Boot, which in turn loads the Linux kernel.
