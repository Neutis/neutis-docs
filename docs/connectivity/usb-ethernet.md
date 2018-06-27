
Neutis Dev Board has a USB OTG port which allows connecting your Mac or PC to Neutis using a USB cable.

<div style="text-align: center;"><img src="../../img/connectivity/neutis_usb_otg_connected.png" style="width: 700px;"></div><br>

You will see a new Ethernet device whose IP address is ```192.168.2.15```.

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

Now you can connect to Neutis over ssh:

```bash

ssh root@192.168.2.15

```
