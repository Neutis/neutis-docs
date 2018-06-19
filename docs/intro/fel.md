## What is FEL?

FEL is a low-level procedure that implements a special USB protocol.
It is contained in the BROM (BootROM) on Allwinner devices and
mainly used for initial programming and recovery of devices.

!!! note
    Your device needs to be attached to a host by using a a USB cable,
    connected to a port where your device will appear as a USB slave
    (USB-OTG port on your Neutis).

## How to make Allwinner boot to FEL?

When your device boots up, it first executes the very first instructions
in BROM. It jumps to eGON.BRM address where some low-lewel procedures are
performed to set up CPU, clocks, etc. After that the FEL pin is checked:

* If it is low, then your device enters FEL mode.
* If the pin is high, it tries to boot from the media device.

!!! note
    If device fails to boot from media device (MMC or internal NAND flash),
    FEL mode is also triggered.

There are many ways of entering FEL mode:

* Through a special button.
* Through serial console by sending '1' character during power-up.
* Through a special SD card image which just jumps to FEL.
* By having no valid boot image.

!!! note
    The FEL pin by default is pulled high. But when you push 'U-BOOT' button on
    your Neutis, the pin becomes low.

## How do we flash software?

We're loading a minimal Linux image through FEL protocol. This image is doing
nothing more than exporting eMMC as a mass storage device. This way we are able
to flash eMMC.

## Boot priority

Generally, the Allwinner device tries to boot in the following order:

* SD Card0 also known as MMC0
* Internal NAND flash also known as NAND
* SD Card2 also known as MMC2
* SPI connected NOR flash also known as SPI
* If all fails, FEL is executed
