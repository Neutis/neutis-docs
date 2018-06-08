## SPI Example

In this example you'll know how to control Neutis' SPI interface.
We're going to use SPI0, but you can practice with SPI1 as well.
Just make sure that overlay for SPI1 is enabled in your ```/boot/Env.txt``` and you're using the right pins.

Connect 5 required wires (GND, CS0, CLK0, MISO0, MOSI0) to your device
as shown in the picture below.

<div style="text-align: center;"><img src="../../img/examples/spi_connection.png" style="width: 700px;"></div><br>

Copy the following Python program to talk to an SPI device and
save it on Neutis as spi.py for example.

```python

import time
import spidev


spi = spidev.SpiDev()           # create spi object
spi.open(0, 0)                  # open spi port 0, device (CS) 0


try:
    while True:
        spi.xfer2([0x0F])       # transfer one byte
        time.sleep(0.1)         # sleep for 0.1 seconds
except KeyboardInterrupt:       # If Ctrl+C is pressed,
    spi.close()                 # close the port before exit

```

Run it:

```bash

python3 spi.py

```

To stop it just press ```Ctrl+C```.

While the program is running, connect your logic analyzer to
the pins. You should see the following:

<div style="text-align: center;"><img src="../../img/examples/spi.png" style="width: 700px;"></div><br>