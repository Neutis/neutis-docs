
## Connection with internal USB to UART converter

Neutis devboard has a USB-Serial converter. To enable it set a jumper on UART pins (`URX0` and `UTX0`) and
plug in Micro-USB cable to **POWER CONSOLE** port on Neutis.

![jumpers_on_uart_pins](../../img/connectivity/serial/jumpers_on_uart_pins.png)

## Connection with external USB to UART converter

You can connect to Neutis using an external USB to UART converter. This example covers connection with CP2102
controller, but any other applicable devices may be also used. You need to attach URX0 pin to TXD, UTX0 to RXD
and GND to GND like it is demonstrated in the picture below.

![CP2102](../../img/connectivity/serial/cp2102_connection.png)

To connect over serial and see Linux booting over the serial port you need to follow a couple of simple steps.

### Linux/MacOS

#### Find the name of USB device

With a USB-Serial adapter plugged in, you can get a list of all available devices:

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

Look for  `SLAB_USBtoUART` on MacOS or `ttyUSB` on Linux.

Connect:

```bash

screen /dev/tty.SLAB_USBtoUART 115200

```

<div style="text-align: center;"><img src="../../img/connectivity/serial/login_linux_macos.png" style="width: 500px;"></div><br>

#### Login

At the login prompt, type ```root``` and press Enter.

### Windows

- Download and install PuTTy terminal emulator.
- In Device Manager find your COM port.

<div style="text-align: center;"><img src="../../img/connectivity/serial/device_manager_windows.png" style="width: 600px;"></div><br>

In this example it is ```COM1```.

- Serial line __COM#__
- Speed __115200__
- Connection type __Serial__

<div style="text-align: center;"><img src="../../img/connectivity/serial/putty_settings.png" style="width: 500px;"></div><br>

Click open, at the login prompt, type ```root``` and press Enter.:

<div style="text-align: center;"><img src="../../img/connectivity/serial/serial_login_win.png" style="width: 500px;"></div><br>
