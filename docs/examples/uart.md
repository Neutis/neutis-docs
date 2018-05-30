## UART example

Emlid Neutis has 4 available UART ports:

|Port|Device|TX Pin|RX Pin|
|:-:|:-:|:--:|:--:|
|UART0|/dev/ttyS0|PA4|PA5
|UART1|/dev/ttyS1|PG6|PG7
|UART2|/dev/ttyS2|PA0|PA1
|UART3|/dev/ttyS3|PA13|PA14

In this example we are going to perform a loopback test by sending
data to a TX pin and receiving on the RX pin of the UART2 port.

First, short the UART2 pins PA0 and PA1 as shown in the picture:

<div style="text-align: center;"><img src="../../img/examples/shorted_uart_pins.jpg" style="width: 500px;"></div><br>

Then enable it by applying UART2 Device Tree overlay.
Open /boot/Env.txt and edit it so as it should look like this:

```bash

/boot/Env.txt:

loglevel=10
overlays=uart2

```

Reboot and login to your device. Now we need to change terminal
line settings to disable echoing back every character typed,
otherwise you will get endless data loop from ```/dev/ttyS2```:

```bash

stty -echo -F /dev/ttyS2

```

Print on the standard output every character you type:

```bash

cat /dev/ttyS2

```

Login to Neutis in another terminal and write something to ```/dev/ttyS2```:

```bash

echo "hello" > /dev/ttyS2

```

In the first terminal you should get exactly what you typed.