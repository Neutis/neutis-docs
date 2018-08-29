
### Configuring and activating an access point

```bash
#!/bin/bash

SSID="NeutisN5"
PASSWORD="12345678"

nmcli    con add \
         type wifi \
         ifname wlan0 \
         con-name $SSID \
         autoconnect no \
         ssid $SSID

nmcli    con modify $SSID \
         802-11-wireless.mode ap \
         802-11-wireless.band bg \
         wifi-sec.key-mgmt wpa-psk \
         wifi-sec.proto rsn \
         wifi-sec.pairwise ccmp \
         wifi-sec.group ccmp \
         wifi-sec.psk $PASSWORD \
         ipv4.method shared \
         ipv4.addresses 192.168.42.1/24 \
         ipv6.method ignore

nmcli    con up $SSID
```
