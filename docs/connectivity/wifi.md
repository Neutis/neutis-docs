## Wi-Fi

Connecting to your Neutis over Wi-Fi frees you from the hassle with wires,
jumpers, USB cables. You also won't need to be close to your device all the
time in contrast to in contrast to connecting over serial or usb-ethernet.

### Configuring and activating network

Neutis image comes with pre-installed NetworkManager, so you can use
```nmcli``` tool to manage your wifi connections.

First, log into your Neutis to add the network.

You can list all available networks by typing:

```bash

nmcli device wifi list

```

It will produce the similar output:

```bash

*  SSID                   MODE   CHAN  RATE       SIGNAL  BARS  SECURITY
*  EML33T2                Infra  11    54 Mbit/s  79      ***   WPA2
   DIRECT-wBM2070 Series  Infra  11    54 Mbit/s  64      ***   WPA2
   MTS_FREE_SPB           Infra  6     54 Mbit/s  50      **

```

If your network is using WPA2 security, type:

```bash

sudo nmcli device wifi connect "NETWORK_SSID" password "NETWORK_PASSWORD"

```

If you need to connect to the open network, just leave the password parameter empty:

```bash

sudo nmcli device wifi connect "NETWORK_SSID"

```

The more detailed information about nmcli tool, its parameters and connecting to the hidden or
802.1X networks is available on [this page](https://developer.gnome.org/NetworkManager/stable/nmcli.html).

If you did everything right, you would be connected to the network and the following message would appear:

```bash

Device 'wlan0' successfully activated with 'd6bd78ac-2ff9-42b5-96d1-d984fb4ee852'

```



###Connecting to the Neutis

First, you need to find your ip address. This can be done by typing:

```bash

ip addr show

```

Find ```wlan0``` in the output:

```bash

3: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel qlen 1000
    link/ether b0:f1:ec:02:17:4c brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.122/24 brd 192.168.1.255 scope global dynamic wlan0
       valid_lft 4235sec preferred_lft 4235sec
    inet6 fe80::b09a:b317:36e2:7608/64 scope link
       valid_lft forever preferred_lft forever

```

In this case the ip address is **192.168.1.122**.

Now you can connect to your Neutis via ssh:

```bash

ssh root@192.168.1.122

```
