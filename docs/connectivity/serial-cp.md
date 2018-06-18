## Serial with CP2102 connection

You can connect to your Neutis using CP USB to UART converter.
This is mostly the same as connection with USB-Serial, but you
need to attach URX0 pin to TXD, UTX0 to RXD and GND to GND like
shown in the pictire below.

![CP2102](../../img/connectivity/cp2102_connection.png)

The rest of the connection process including identifying your USB device
and logging in you can find [here](https://docs.neutis.io/connectivity/usb-serial/).