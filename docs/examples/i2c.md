#I²C

Emlid Neutis has 3x I2C interfaces. In this example we will connect I2C device (GY63 breakout board or GY86 that include MS5611 pressure sensor) and read data from it.

##Attaching board

Connect SDA and SCK directly to the PA12 and PA11 pins.
Provide the power to your board and connect to the GND.

The connections required are:

| GY63/GY86  | Neutis            || 
|:----------:|:------:|----------:|
| VCC        | 5v     | Power     |
| GND        | GND    | Ground    |
| SCL        | PA11   | I2C clock |
| SDA        | PA12   | I2C data  |

##Reading data

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

MS5611 usually can be found at address of 0x77, but when the CSB pin (Chip Select which is used
to enable/disable the interface) is pulled high, the address may change to 0x76.

2) Read the data:

```bash
i2cdump -y 0 0x77
```  

You should see something similar to:

```
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f    0123456789abcdef
00: d3 00 XX XX XX XX XX XX XX XX XX XX XX XX XX XX    ?.XXXXXXXXXXXXXX
10: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
20: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
30: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
40: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
50: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
60: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
70: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
80: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
90: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
a0: 00 00 b4 b4 bf bf 6f 6f 66 66 7d 7d 6b 6b e0 e0    ..????ooff}}kk??
b0: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
c0: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
d0: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
e0: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
f0: XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX XX    XXXXXXXXXXXXXXXX
```

3) Alternatively, you can use ```smbus``` module in Python or ```ioctl()``` calls in C
to send the read and write commands to I2C slaves.