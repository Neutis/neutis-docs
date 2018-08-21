SPI display can be connected to Neutis module via SPI interface.
In this example, we connect HY-1.8 SPI TFT display(160x128) to
Neutis Developer board.
We're going to use SPI0, PA9 and PA10 to control the display,
but you can practice with SPI1 and other GPIO pins as well.
Just make sure that overlay for SPI1 is enabled
in your ```/boot/Env.txt``` and you're using the right pins.

The connection diagram is shown below.

|Neutis Dev board|HY-1.8 SPI TFT display|
|:-:|:-:|
|GND|GND|
|5V|VCC|
|PA10|RESET|
|PA9|A0|
|PC0|SDA|
|PC2|SCK|
|PC3|CS|
|3.3V or 5V|LED+|
|GND|LED-|

<div style="text-align: center;"><img src="../../img/examples/spi_lcd_display_connection.png" style="width: 700px;"></div><br>

It's needed to load `fbtft_device` Linux kernel module to communicate with the display.
```
root@neutis-n5:~# modprobe fbtft_device name=sainsmart18 gpios=reset:10,dc:9
```

Neutis image enables(by default) a new console on the display after loading the module.
Firstly, we need to disable this linux console service to release the display.
```
root@neutis-n5:~# systemctl stop getty@.service
```

Download a png file to Neutis. The fbida project allows to view and edit images.
```
root@neutis-n5:~# fbi -T 1 -a your_pic.png
```
