#I²C

Emlid Neutis has 4x I2C interfaces:

|Port|Device|SCK Pin|SDA Pin|Pull-Up
|:-:|:-:|:--:|:--:|:-:|
|I2C0|/dev/i2c-0|PA11|PA12|Yes
|I2C1|/dev/i2c-1|PA18|PA19|No
|I2C2|/dev/i2c-2|PE12|PE13|Yes
|S_I2C|/dev/i2c-3|PL0|PL1|Yes

In this example, we connect an I2C device (a breakout board that includes MS5611 pressure sensor) and detect it.

## Attaching board

![ms5611_neutis](../../img/examples/neutis_ms5611.png)</a>

Connect SDA and SCK directly to the PA12 and PA11 pins.
Provide the power to your board and connect to the GND.

|Board|Neutis|Purpose|
|:-|:-|:-|
| VCC | 5V_IN | Power|
| GND | GND | Ground|
| SCL | PA11 | I2C clock|
| SDA | PA12 | I2C data|

## Detecting sensor

1) Try to detect I2C adapter:

```bash
i2cdetect -y 0
```

```
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: 60 -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- 77
```

MS5611 usually can be found at the address of 0x77, but when the CSB pin (Chip Select which is used
to enable/disable the interface) is pulled high, the address may change to 0x76.
