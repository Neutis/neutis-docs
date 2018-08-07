## Power domains description

Neutis N5 has Allwinner H5 in its core. This processor has several power domains that should be taken into account.

|Domain|Description|
|:-|:-|
|CORE_POWER_IN|Power supply for ARM core|
|VDD_CPUFB|Pin for monitoring actual core voltage|
|VDD_IO|Power supply GPIOs and digital interfaces I/O buffers|
|3V3_IN|Power supply for eMMC, DDR, Wi-Fi, PLL, USB, HDMI, EPHU, AUDIO|
|VDD_RTC_IN|Power supply for RTC, PORT_L, security system|

## Supply voltage 

For Neutis to power up, we need to supply voltage to these domains.
CORE_POWER_IN domain voltage depends on the processor frequency. The higher the voltage,
the higher power consumption is.

!!! note
     Refer to p.685 of [Allwinner H5 datasheet](../hardware-integration/allwinner.md) for more information.

|Domain|Min|Typ|Max|
|:-:|:-:|:-:|:-:|
|CORE_POWER_IN|1,1V||1,4V|
|VDD_IO|3,0V|3,3V|3,6V|
|3V3_IN|3,24V|3,3V|3,36V|
|VDD_RTC_IN|3,0V||3,3V|

!!! Warning
    A higher core frequency requires a higher voltage on CORE_POWER_IN

|Core Power|CPU frequency|
|:-:|:-:|
|1,0V|408MHz|
|1,04V|648MHz|
|1,1V|816MHz|
|1,12V|912MHz|
|1,2V|1008MHz|
|1,24V|1104MHz|
|1,29V|1200MHz|
|1,34V|1296MHz|

!!! Warning
    A higher voltage on CORE_POWER_IN requires a better cooling conditions

## Absolute maximum ratings

|Value|Min|Max|
|:-:|:-:|:-:|
|Current for one GPIO| |10mA|
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

## GPIO Electrical characteristics

|Value|Mix|Typ|Max|
|:-:|:-:|:-:|:-:|
|High-Level logic output Voltage|VDD_IO - 0.2V||VDD_IO|
|Low-Level logic output Voltage|0V||0.2V|
|Internal pullup/pulldown resistor value|50k Ohm|100k Ohm|150k Ohm|
|High-Level logic input Current|||10uA|
|Low-Level logic input Current|||10uA|
|Three state output Leakage current|-10uA||10uA|
