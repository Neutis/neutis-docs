#GPIO

<div style="text-align: center;"><img src="../../img/examples/gpio_led_animation.gif" style="width: 500px;"></div><br>
Emlid Neutis has 38 GPIO pins. To see them all check out the pinout.

GPIO can be accessed through Linux’s sysfs interface. (```/sys/class/gpio directory```).

##GPIO Sysfs Numbers

To obtain the correct number of the desired pin you have to calculate it from the pin name:
```(position of letter in alphabet - 1) * 32 + pin number```

In this example we will be controlling user led which is connected to the pin **PA10**.
According to the formula above, the correct pin number is ```(1 - 1) * 32 + 10 = 10```.

##Let there be light

1) To control a GPIO bit you should first to export the pin:

```echo 10 > /sys/class/gpio/export```

After that you'll see a new directory ```gpio10``` in ```/sys/class/gpio``` containing the files you need to control the pin.

2) Write "out" to /sys/class/gpio/gpio10/direction:

```echo out > /sys/class/gpio/gpio10/direction```

3) Set the value:

```echo 1 > /sys/class/gpio/gpio10/value```

<div style="text-align: center;"><img src="../../img/examples/gpio_led_on.jpg" style="width: 500px;"></div><br>

4) To turn off the led you need to write 0:

```echo 0 > /sys/class/gpio/gpio10/value```

<div style="text-align: center;"><img src="../../img/examples/gpio_led_off.jpg" style="width: 500px;"></div><br>

When you are done, remove GPIO pin by just unexporting it:

```echo 10 > /sys/class/gpio/unexport```