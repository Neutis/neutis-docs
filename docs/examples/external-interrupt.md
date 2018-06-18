This example will show you how to handle PL10 interrupts in userspace.
We will be reading value from PL10 pin and controlling PA10 (User LED).
In the result the LED will be switched off by default and switched on when button is pressed.

<div style="text-align: center;"><img src="../../img/examples/push_ext_user_led.gif" style="width: 700px;"></div><br>

Let's prepare PL10 and export it firstly. The number of PL10 pin is 362.
If you don't know why it is so, please refer to [this](https://docs.neutis.io/examples/gpio/#gpio-sysfs-numbers) page.

```bash

echo 362 > /sys/class/gpio/export

```

When you export it, you need to set direction explicitly:

```bash

echo in > /sys/class/gpio/gpio362/direction

```

PL10 is pulled up. It means that by default it has high value.
You can check it by yourself:

```bash

cat /sys/class/gpio/gpio362/value

```

This will return 1. Now you can press the `EXT_INT` button and
run the previous command one more time and see that pin gets low.

Once you learned how to change PL10 pin value, let's make use of it
and write small bash script to control user LED.

Copy the contents of the following program, save it on your Neutis
and make the file executable. Run it and notice what's happening when
you press the button.

```bash

#!/bin/bash

# Handle pressing ctrl-c during the execution
trap cleanup INT


# Cleaning up and unexporting used pins
function cleanup() {
    echo 0 > /sys/class/gpio/gpio10/value
    echo 362 > /sys/class/gpio/unexport
    echo 10 > /sys/class/gpio/unexport
    exit 0
}


# Exporting PL10 pin and setting it as an input
echo 362 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio362/direction


# Exporting PA10 pin and setting it as an output
echo 10 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio10/direction


echo "Press [CTRL+C] to stop.."
while :
do
    # Reading PL10 value and writing reversed value back to PA10
    if cat /sys/class/gpio/gpio362/value | grep 1 >/dev/null; then
        echo 0 > /sys/class/gpio/gpio10/value
    else
        echo 1 > /sys/class/gpio/gpio10/value
    fi

    sleep 0.01
done

```
