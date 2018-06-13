## USB-Serial connection

Neutis devboard has a soldered out USB-Serial converter. So you won't need a separate device to see the output.
In order to enable it put a jumper on UART pins (`URX0` and `UTX0`).

![jumpers_on_uart_pins](../../img/connectivity/jumpers_on_uart_pins.png)

To connect over serial and see Linux booting over the serial port you'll need to follow a couple of simple steps laid out below.

### Linux/MacOS

#### Find the name of USB device
With the USB-Serial adapter plugged in, you can get a list of all avilable devices:

On Linux:

```bash

ls /dev/ttyUSB*

```

Example output:

```bash

/dev/ttyUSB0
/dev/ttyUSB1

```

On MacOS:

```bash

ls /dev/cu.*

```

Example output:

```bash

/dev/cu.Bluetooth-Incoming-Port
/dev/cu.SLAB_USBtoUART

```

Look for something like `SLAB_USBtoUART` on MacOS or `ttyUSB` on Linux.

Connect:

```bash

screen /dev/tty.SLAB_USBtoUART 115200

```

<div style="text-align: center;"><img src="../../img/connectivity/login_linux_macos.png" style="width: 500px;"></div><br>

#### Login

At the login prompt, type ```root``` and press Enter.

### Windows

- Download and install PuTTy terminal emulator.
- in Device Manager find out your COM port.

<div style="text-align: center;"><img src="../../img/connectivity/device_manager_windows.png" style="width: 500px;"></div><br>

In this example it is ```COM1```.

- Serial line __COM#__
- Speed __115200__
- Connection type __Serial__

<div style="text-align: center;"><img src="../../img/connectivity/putty_settings.png" style="width: 500px;"></div><br>

Click open:

<div style="text-align: center;"><img src="../../img/connectivity/login_putty.png" style="width: 500px;"></div><br>

#### Login

At the login prompt, type ```root``` and press Enter.
