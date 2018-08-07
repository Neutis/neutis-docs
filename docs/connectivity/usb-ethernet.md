
Neutis Dev Board has a USB OTG port which allows connecting your PC to Neutis using a USB cable.

<div style="text-align: center;"><img src="../../img/connectivity/usb-eth/neutis_usb_otg_connected.png" style="width: 700px;"></div><br>

You will see a new Ethernet interface, Neutis IP address is ```192.168.2.15```.

On Linux:

```bash

enp0s20u1u4u1 Link encap:Ethernet  HWaddr a6:4b:bf:d4:03:1b
        inet addr:192.168.2.161  Bcast:192.168.2.255  Mask:255.255.255.0
        inet6 addr: fe80::5228:9764:110d:2ec4/64 Scope:Link
        UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
        RX packets:81 errors:0 dropped:0 overruns:0 frame:0
        TX packets:43 errors:0 dropped:0 overruns:0 carrier:0
        collisions:0 txqueuelen:1000
        RX bytes:12785 (12.7 KB)  TX bytes:5780 (5.7 KB)
```

<div style="text-align: center;"><img src="../../img/connectivity/usb-eth/new_eth_device_debian.png" style="width: 700px;"></div><br>

On MacOS:

```bash

en7: flags=8863<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu 1500
        options=4<VLAN_MTU>
        ether c2:91:38:b8:e7:ac
        inet6 fe80::4a6:5d6e:629c:ef67%en7 prefixlen 64 secured scopeid 0x10
        inet 192.168.2.85 netmask 0xffffff00 broadcast 192.168.2.255
        nd6 options=201<PERFORMNUD,DAD>
        media: autoselect (100baseTX <full-duplex>)
        status: active


```

<div style="text-align: center;"><img src="../../img/connectivity/usb-eth/new_eth_device_macos.png" style="width: 700px;"></div><br>

On Windows:

Not supported yet.

### Connect

Now you can connect to Neutis over ssh, use a terminal emulator for it:

```bash
user@PC:~# ssh root@192.168.2.15
Warning: Permanently added '192.168.2.15' (ECDSA) to the list of known hosts.
Last login: Thu Jun 28 14:43:56 2018 from 192.168.2.25
root@neutis-n5:~#
```
