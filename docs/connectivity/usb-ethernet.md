## USB-Ethernet SSH

Neutis Dev Board has a USB OTG port which allows you to connect to your Neutis using
USB cable.

In order to do this, plug in a MicroUSB cable from USB OTG port to your computer.

<div style="text-align: center;"><img src="../../img/connectivity/devboard_connected.jpg" style="width: 700px;"></div><br>

You will get a new Ethernet device whose IP address is ```192.168.2.15```.

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

<div style="text-align: center;"><img src="../../img/connectivity/new_ethernet_device.png" style="width: 700px;"></div><br>

### Connect

Now you can connect to your Neutis over ssh:

```bash

ssh root@192.168.2.15

```
