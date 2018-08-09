# Bluetooth

The bluetooth chip is handled in Linux via UART interface by the Bluez utilities and the rfkill power switch. UART1(`/dev/ttyS1`) is used for the communication.

## Scanning and Pairing Devices

The bluetooth chip can be blocked/unblocked by linux via `rfkill` utility.

```bash
root@neutis-n5:~# rfkill list
0: bcm43xx: bluetooth
        Soft blocked: yes
        Hard blocked: no
1: phy0: wlan
        Soft blocked: no
        Hard blocked: no
2: hci0: bluetooth
        Soft blocked: yes
        Hard blocked: no
```

Enable bluetooth:

```bash
rfkill unblock bluetooth
```

`bluetoothctl` utility can be used for the basic operations in the command line:

```bash
root@neutis-n5:~# bluetoothctl
[NEW] Controller B0:F1:EC:01:33:7D neutis-n5 [default]
Agent registered
[bluetooth]#
```

Perform a scan:

```bash
[NEW] Controller B0:F1:EC:01:33:7D neutis-n5 [default]
Agent registered
[bluetooth]# scan on
Discovery started
[CHG] Controller B0:F1:EC:01:33:7D Discovering: yes
[NEW] Device 38:A4:ED:21:2F:A1 Alex-Mob
[NEW] Device 94:53:30:B6:C9:2A Oleg-Laptop
[NEW] Device 3C:95:09:53:9D:6E DESKTOP-123
[NEW] Device 98:01:A7:B4:6C:56 aleksandrs-laptop
```

Pair the device. Pay attention, you will need to confirm the pair request:

```bash
[bluetooth]# pair 98:01:A7:B4:6C:56
Attempting to pair with 98:01:A7:B4:6C:56
[CHG] Device 98:01:A7:B4:6C:56 Connected: yes
Request confirmation
[agent] Confirm passkey 174052 (yes/no): yes
[CHG] Device 98:01:A7:B4:6C:56 Modalias: bluetooth:v004Cp4A3Ad1011
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 00001101-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 0000110a-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 0000110c-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 00001112-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 00001117-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 0000111f-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 UUIDs: 00001200-0000-1000-8000-00805f9b34fb
[CHG] Device 98:01:A7:B4:6C:56 ServicesResolved: yes
[CHG] Device 98:01:A7:B4:6C:56 Paired: yes
Pairing successful
```

`bluetoothctl` has a lot of useful commands, enter `help` to display the list of commands:
```bash
[bluetooth]# help
Available commands:
  list                       List available controllers
  show [ctrl]                Controller information
  select <ctrl>              Select default controller
  devices                    List available devices
  paired-devices             List paired devices
  system-alias <name>        Set controller alias
  reset-alias                Reset controller alias
  power <on/off>             Set controller power
  pairable <on/off>          Set controller pairable mode
  discoverable <on/off>      Set controller discoverable mode
  agent <on/off/capability>  Enable/disable agent with given capability
  default-agent              Set agent as the default one
  advertise <on/off/type>    Enable/disable advertising with given type
  ...
```