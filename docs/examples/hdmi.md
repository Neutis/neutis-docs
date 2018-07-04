This example demonstrates how to enable HDMI support on Neutis and render the image.

## Preparing the image

The first step is to build an image with Qt libraries and hello-world application. If you have not yet
build any images with Yocto, visit [this page](../yocto/tutorial.md). If you have already set up build host,
then navigate to ```neutis-image``` directory.

Open ```meta-layers/meta-neutis-examples/recipes-core/images/neutis-image.bbappend```
and uncomment the following line:

```bash

IMAGE_INSTALL_append += "qt-example"


```

```qt-example``` is a Yocto recipe that contains Qt hello-world application and depends on many Qt libraries
which will be compiled and included to the image.

Build the image itself:

```bash

source init.sh
bitbake neutis-image

```

Flash Neutis with the newly created image, boot and log in.


## Test

Add HDMI overlay to ```/boot/Env.txt```:

```bash

overlays=hdmi

```


Then reboot and place any picture named ```image.png``` in ```/home/root```.
Connect your monitor with HDMI cable to Neutis and launch the application:

```bash

qt_hello_world -platform linuxfb

```

As a result you should see the rendered image.

![neutis_hdmi_out](../../img/examples/neutis_hdmi_out.png)</a>
