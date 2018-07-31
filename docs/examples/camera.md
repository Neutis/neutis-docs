# Camera

Devboard includes CSI Camera Module 5MP OV5640. It's connected to board with FFC cable.

## Setup

Add `camera-status-okay` overlay to `/boot/Env.txt`:

```bash
overlays=camera-status-okay
```

After reboot you will see that that Linux has occupied camera's address (0x3c) on i2c-2 bus:

```bash
i2cdetect -y 2
```

```
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- UU -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- --
```

Also you will find video device node at `/dev/video0`.


## Photo

For taking photo you can use preinstalled `fswebcam`.
This program allows to capture a number of frames from any V4L or V4L2 compatible device.

Take photo:

```bash
fswebcam -d /dev/video0 -r 640x480 image.jpg
```
