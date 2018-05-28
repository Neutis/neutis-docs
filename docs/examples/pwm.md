## PWM Example

Emlid Neutis has two available PWM pins. In this example we will be using ```PWM0```,
which is the alternative function of ```URX0``` pin and is disabled by default.

<div style="text-align: center;"><img src="../../img/examples/pwm_urx0_pin.jpg" style="width: 500px;"></div><br>

To enable it you should apply special Device Tree overlay by editing ```/boot/Env.txt```.
You need to add ```pwm``` to the ```overlays``` section:

```bash

/boot/Env.txt:

loglevel=10
overlays=pwm

```

Save this file and reboot your device. When your system has finished booting,
you should get ```pwmchip0``` interface in sysfs.

```bash

root@neutis:~# ls /sys/class/pwm/pwmchip0
device  export  npwm  power  subsystem  uevent  unexport


```

Activate the PWM:

```bash

echo 0 > /sys/class/pwm/pwmchip0/export

```

Set period to 10ms:

```bash

echo 10000000 > /sys/class/pwm/pwmchip0/pwm0/period

```

It means that the signal is on for 10% of the period and off the other 90%.

Set normal polarity:

```bash

echo "normal" > /sys/class/pwm/pwmchip0/pwm0/polarity

```

Enable the PWM:

```bash

echo 1 > /sys/class/pwm/pwmchip0/pwm0/enable

```

Set duty cycle to 1ms:

```bash

echo 1000000 > /sys/class/pwm/pwmchip0/pwm0/duty_cycle

```

You can connect logic analyzer to ```PWM0``` pin and see the result:

<div style="text-align: center;"><img src="../../img/examples/pwm.png" style="width: 700px;"></div><br>
