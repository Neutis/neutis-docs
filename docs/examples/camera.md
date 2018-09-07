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
fswebcam -d /dev/video0 -r 1280x720 -S 20 image.jpg
```

## Video streaming

First of all you need to configure network: [Wi-Fi](../connectivity/wifi), [Ethernet](../connectivity/ethernet) or [USB-Ethernet](../connectivity/usb-ethernet).

For video streaming you can use mjpg-streamer. You can find the recipe in [meta-emlid-neutis-examples](https://github.com/Neutis/meta-emlid-neutis-examples).

MJPG-streamer takes JPGs from Linux-UVC compatible webcams, filesystem or other input plugins and streams them as M-JPEG via HTTP to webbrowsers, VLC and other software. It is the successor of uvc-streamer, a Linux-UVC streaming application with Pan/Tilt.

Start streaming with the following command:

```bash
mjpg_streamer -i "input_uvc.so -d /dev/video0 -r 1280x720 -y 1 -n" -o "output_http.so -p 8080 -w /usr/share/mjpg-streamer/www/"
```

Here are some mjpg_streamer's options:
```
-i: input device, "input_uvc.so" means it takes input from a camera;
-o: output device, "output_http.so" means the it transmits data via http;
-d: device node of camera;
-r: resolution of the video device;
-y: camera's data format: 1:yuyv, 2:yvyu, 3:uyvy 4:vyuy;
-n: disable the dynctrls function;
-p: TCP port for this HTTP server;
-w: path to folder that contains web pages;
```

!!! attention
    Neutis and camera can become hot during video streaming

Type [Neutis IP]:[Port] in the address bar of your browser for getting access to video stream:

![mjpg_display](../../img/examples/mjpg_display.png)</a>
