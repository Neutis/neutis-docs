To ensure correct functioning on Neutis power on sequence must be taken into account. This is related to how power-on reset works on Allwinner H5. Power-on reset signal gets propagated to CPU 60 ms after 3V3_IN power becomes stable. The diagram below shows that voltage at all power inputs must become stable at the same time or with delays (t1, t2) that are not more than 1 ms. All power must be stable when power-on reset signal gets to CPU (Trst).

<div style="text-align: ceter;"><img src="../../img/hardware-integration/power_on_sequence.png" style="width: 700px;"></div><br>
