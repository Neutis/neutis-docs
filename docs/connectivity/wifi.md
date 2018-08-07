
### Configuring and activating a network

Neutis image comes with pre-installed NetworkManager so that you can use
```nmcli``` console tool to manage your wifi connections.

Firstly, log into your Neutis via serial console or ethernet to add the network.

```bash
root@neutis-n5:~#
```

You can list all available networks by typing:

```bash

nmcli device wifi list

```

It produces the output similar to this:

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

If you need to connect to an open network, leave the password parameter empty:

```bash

sudo nmcli device wifi connect "NETWORK_SSID"

```

The more detailed information about nmcli tool, its parameters and connecting to the hidden or
802.1X networks is available on [nmcli tool page](https://developer.gnome.org/NetworkManager/stable/nmcli.html).

After connecting to a network, the following message will appear:

```bash

Device 'wlan0' successfully activated with 'd6bd78ac-2ff9-42b5-96d1-d984fb4ee852'

```

You need to find Neutis IP address:

```bash

ip addr show wlan0
```

Output:

```bash
3: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel qlen 1000
    link/ether b0:f1:ec:02:17:4c brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.170/24 brd 192.168.1.255 scope global dynamic wlan0
       valid_lft 4235sec preferred_lft 4235sec
    inet6 fe80::b09a:b317:36e2:7608/64 scope link
       valid_lft forever preferred_lft forever
```

In this case, the IP address is ```192.168.1.170```.

You can connect to Neutis via ssh, the internet connection is available now:

### Connecting to Neutis

On Linux/MacOS:

Use a terminal emulator to ssh:

```bash
user@PC:~# ssh root@192.168.1.170
Warning: Permanently added '192.168.1.170' (ECDSA) to the list of known hosts.
Last login: Thu Jun 28 14:43:56 2018 from 192.168.2.25
root@neutis-n5:~#
```

On Windows:

Download and install PuTTy terminal emulator.

<div style="text-align: center;"><img src="../../img/connectivity/wifi/wifi_conn_win.png" style="width: 500px;"></div><br>

Click open, at the login prompt, type ```root``` and press Enter.

<div style="text-align: center;"><img src="../../img/connectivity/wifi/wifi_login_win.png" style="width: 500px;"></div><br>
