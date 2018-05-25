## Power domains description

Neutis N5 has Allwinner H5 in its core. This processor has a few power domains you should take into account.
Here's a couple small tips. For further information refer to Allwinner H3/H5 datasheet.

|Domain|Description|
|:-|:-|
|CORE_POWER_IN|Power supply  for ARM core|
|VDD_CPUFB|Pin for monitoring actual core voltage|
|VDD_IO|Power supply GPIOs and digital interfaces I/O buffers|
|3V3_IN|Power supply for eMMC, DDR, Wi-Fi, PLL, USB, HDMI, EPHU, AUDIO|
|VDD_RTC_IN|Power supply for RTC, PORT_L, security system|

!!! Warning
    Be careful higher core frequency needs higher voltage on CORE_POWER_IN

## Supply voltage 

In order for Neutis to power up you need to supply voltage to these domains.
CORE_POWER_IN domain voltage depends on the processor frequency. The higher the voltage,
the higher power consumption is. For exact figures refer to p.<N> in Allwinner H3/H5 datasheet.

|Domain|Voltage|
|:-:|:-:|
|VDD_IO|3.3V|  
|CORE_POWER_IN|1.1-1.3V|

## Absolute maximum ratings


|Value|Mix|Max|
|:-:|:-:|:-:|
|Current for one GPIO| |40mA|
|Voltage on CORE_POWER_IN| -0.3V | 1.5V|
|Voltage on VDD_IO| -0.3V | 3,6V|
|Voltage on 3V3_IN| -0.3V | 3,5V|
|Voltage on VDD_RTC_IN| -0.3V | 3,6V|
|High-Level logic input Voltage ||VDD_IO+0.3V|
|Low-Level logic input Voltage| -0.3V|
|Current on CORE_POWER_IN||TBD|
|Current on VDD_IO||TBD|
|Current on 3V3_IN||TBD|
|Current on VDD_RTC_IN||TBD|
