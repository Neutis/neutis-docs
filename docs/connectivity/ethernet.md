
Neutis Developer Board has an internal 10/100 Ethernet PHY which allows connecting Neutis to your PC using an Ethernet cable.

You need to set IP addresses to your PC and Neutis.

## Configuration

### Linux/MacOS

Neutis configuration:

Machine|IP address|
|:-|:-|
|Neutis| 192.168.10.1|
|Linux/MacOS PC| 192.168.10.2|

Stop `NetworkManager` to release the Ethernet interface for configuration:
```bash
root@neutis-n5:~# systemctl stop Networkmanager

```

!!! warning
    Connect to Neutis via USB-console or USB-ethernet, WiFi is managed by NetworkManager

You need to set an IP address using `ifconfig` utility:

```
root@neutis-n5:~# ifconfig eth0 192.168.10.1
```

Linux/MacOS PC configuration:

Open a terminal emulator.

Linux:

Stop `NetworkManager` if this service is active:
```bash
user@your-PC:~# systemctl stop Networkmanager
```

You need to figure out the name of your Ethernet interface, enter `ifconfig` to display the list of network interfaces:

```bash
user@your-PC:~# ifconfig
enp3s0    Link encap:Ethernet  HWaddr f4:4d:30:63:66:cc
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:89634 errors:0 dropped:0 overruns:0 frame:0
          TX packets:255539 errors:2 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:6175002 (6.1 MB)  TX bytes:382632602 (382.6 MB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:1814 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1814 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:155499 (155.4 KB)  TX bytes:155499 (155.4 KB)

wlp2s0    Link encap:Ethernet  HWaddr b8:81:98:e1:31:b5
          inet addr:192.168.1.172  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::3dd3:120f:9b5d:cd14/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:28220 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2779 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:3165893 (3.1 MB)  TX bytes:591665 (591.6 KB)
```

In this case, `enp3s0` is the Ethernet interface. You need to assign an IP address.

```
user@your-PC:~# ifconfig enp3s0 192.168.10.2
```

MacOS:
```bash
user@your-PC:~# ifconfig
...
utun0: flags=8051<UP,POINTOPOINT,RUNNING,MULTICAST> mtu 2000
    inet6 fe80::78ea:1df0:6885:51e1%utun0 prefixlen 64 scopeid 0xa
    nd6 options=201<PERFORMNUD,DAD>
en37: flags=8823<UP,BROADCAST,SMART,SIMPLEX,MULTICAST> mtu 1500
    options=3<RXCSUM,TXCSUM>
    ether 3c:1e:04:f3:a0:21
    nd6 options=201<PERFORMNUD,DAD>
    media: autoselect (<unknown type>)
    status: inactive
```

```
user@your-PC:~# ifconfig en37 192.168.10.2
```

Connection established, Neutis and Your PC are in one local network.

```bash
user@your-PC:~# ping 192.168.10.1
64 bytes from 192.168.10.1: icmp_seq=1 ttl=64 time=7.03 ms
64 bytes from 192.168.10.1: icmp_seq=2 ttl=64 time=3.59 ms
64 bytes from 192.168.10.1: icmp_seq=3 ttl=64 time=3.47 ms
64 bytes from 192.168.10.1: icmp_seq=4 ttl=64 time=4.13 ms
...

```

```bash
root@neutis-n5:~# ping 192.168.10.2
64 bytes from 192.168.10.2: icmp_seq=1 ttl=64 time=3.56 ms
64 bytes from 192.168.10.2: icmp_seq=2 ttl=64 time=5.35 ms
64 bytes from 192.168.10.2: icmp_seq=3 ttl=64 time=6.24 ms
64 bytes from 192.168.10.2: icmp_seq=4 ttl=64 time=5.98 ms
...

```

### Windows

Windows Settings -> Network & Internet -> Ethernet

<div style="text-align: center;"><img src="../../img/connectivity/eth/neutis_eth_win_sett.png" style="width: 500px;"></div><br>

Related settings -> Change adapter options

<div style="text-align: center;"><img src="../../img/connectivity/eth/neutis_eth_win_adap_opt.png" style="width: 500px;"></div><br>

Choose your Ethernet interface and click twice. You need to figure out your IP address.

<div style="text-align: center;"><img src="../../img/connectivity/eth/neutis_eth_win_eth_bytes_ret.png" style="width: 300px;"></div><br>
<div style="text-align: center;"><img src="../../img/connectivity/eth/neutis_eth_win_eth_stat.png" style="width: 300px;"></div><br>

In this case, IP address is `169.254.146.210`. Neutis address must be different, it could be `169.254.146.211`, for example.

Neutis configuration:

Stop `NetworkManager` to release the Ethernet interface for configuration:
```bash
root@neutis-n5:~# systemctl stop Networkmanager

```

!!! warning
    Connect to Neutis via USB-console or USB-ethernet, WiFi is managed by NetworkManager

You need to set an IP address using `ifconfig` utility:

```
root@neutis-n5:~# ifconfig eth0 169.254.146.211
```

Connection established, Neutis and Your PC are in one local network.

```bash
root@neutis-n5:~# ping 169.254.146.210
64 bytes from 169.254.146.210: icmp_seq=1 ttl=64 time=6.03 ms
64 bytes from 169.254.146.210: icmp_seq=2 ttl=64 time=4.41 ms
64 bytes from 169.254.146.210: icmp_seq=3 ttl=64 time=5.37 ms
64 bytes from 169.254.146.210: icmp_seq=4 ttl=64 time=4.33 ms
...
```
