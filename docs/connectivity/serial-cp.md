## Serial with CP2102 connection

You can connect to Neutis using CP USB to UART converter.
This is very similar to USB-Serial connection. You
need to attach URX0 pin to TXD, UTX0 to RXD and GND to GND like it is demonstrated in the picture below.

![CP2102](../../img/connectivity/cp2102_connection.png)

The rest of the connection process including identifying a USB device
and logging can be found in [USB-Serial section](https://docs.neutis.io/connectivity/usb-serial/).
