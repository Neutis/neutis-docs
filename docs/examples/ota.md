## Mender

Mender is an open source remote software updater for embedded Linux devices. It enables management of software updates to connected devices remotely over any TCP/IP network.

For a high-level introduction to Mender and its architecture, visit [Mender.io](https://mender.io).

Follow the instructions to update your device by Mender.

- You need to build a Neutis image with Mender

!!! note
     Refer to [Yocto tutorial](../yocto/tutorial.md) for more information.

Initialize your environment:

``` bash
bash init.sh -d poky-neutis-mender
source poky/oe-init-build-env build
```

Add following to `$NEUTIS-IMAGE/meta-layers/meta-emlid-neutis/meta-neutis-distro/recipes-core/images/neutis-image.bbappend`:
```bash
require recipes-core/images/neutis-mender-image.inc

```

Run `bitbake neutis-image`

- You need to flash your Neutis N5 module and boot

Image: `$BUILD/tmp/deploy/images/neutis-n5/*.sdimg`

!!! note
     Download and install [Neutis Flasher](../flasher/preface.md) to update Neutis N5 firmware.

- Connect your module to Internet Network

!!! note
     Refer to [Connectivity examples](../connectivity/connectivity.md) for more information.

- Run a simple HTTP server on your build machine

Go to the build directory, mender file has to be there.

Mender file's name is `neutis-image-neutis-n5-(...).mender`

```bash
cd $BUILD/tmp/deploy/images/neutis-n5
```

Run a server by the following command:

```bash
python -m SimpleHTTPServer
```

Figure out your build machine's ip address, we use `192.168.1.4` as an example.

- Run an update
```bash
root@neutis-n5:~# mender -rootfs http://192.168.1.4:8000/neutis-image-neutis-n5-(...).mender
```
Check a progress status and wait for a result.

```bash
root@neutis-n5:~# mender -rootfs http://192.168.1.4:8000/neutis-image-neutis-n5-20180919125739.mender
INFO[0000] Performing remote update from: [http://192.168.1.4:8000/neutis-image-neutis-n5-20180919125739.mender].  module=rootfs
Installing update from the artifact of size 141756416
INFO[0000] opening device /dev/mmcblk2p3 for writing     module=block_device
INFO[0000] partition /dev/mmcblk2p3 size: 746586112      module=block_device
................................   0% 1024 KiB
................................   1% 2048 KiB
...
................................   99% 138240 KiB
................................   100% 138434 KiB
INFO[0199] wrote 746586112/746586112 bytes of update to device /dev/mmcblk2p3  module=device
INFO[0200] Enabling partition with new image installed to be a boot candidate: 3  module=device
```

- Reboot your module

- Check a mender status (boot partition) and commit an update

```bash
root@neutis-n5:~# mender -commit
INFO[0000] Commiting update module=device
```
