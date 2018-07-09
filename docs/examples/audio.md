
This example demonstrates how to build an image with audio support, record audio from your mobile phone
and play it back.

## Preparing the image

The first step is to build an image with ALSA utils. If you have not yet
build any images with Yocto, visit [this page](../yocto/tutorial.md). If you have already set up build host,
then navigate to ```neutis-image``` directory.

Open ```meta-layers/meta-neutis-examples/recipes-core/images/neutis-image.bbappend```
and uncomment the following line:

```bash

IMAGE_INSTALL_append += "alsa-utils"


```

```alsa-utils``` is a Yocto recipe that contains alsamixer, aplay and arecord utilities which we will use
to configure audio settings, input and output devices.

Build the image itself:

```bash

source init.sh
bitbake neutis-image

```

Flash Neutis with the newly created image, boot and log in.

## Alsamixer configuration

Add ```analog-codec``` overlay to ```/boot/Env.txt```:

```bash

overlays=analog-codec

```

Then reboot and connect your mobile phone to **LINEIN** port with 3.5mm cable.

![linein](../../img/examples/linein.png)


Launch ```alsamixer``` and go to [Capture] tab by pressing F4 button. You should see the following window:

![alsamixer_capture](../../img/examples/alsamixer_capture.png)

Press space button under **Line In** so that the **CAPTURE** title is appeared. Press esc and quit alsamixer.

Now you are able to record playing sound from your mobile phone:

```bash

arecord -f cd -d 5 test.wav

```

To play:

Launch ```alsamixer``` again and make sure that your playback settings are similar to these:
![alsamixer_playback](../../img/examples/alsamixer_playback.png)

To play the recorded sound you need to connect your speakers to the **LINEOUT** port.

![lineout](../../img/examples/lineout.png)

!!! danger
    Specified for 10 kOhm impedance. Do not connect the headphones to **LINEOUT**, it can
    damage your device.

Launch aplay:
```bash

aplay -i -f cd test.wav

```