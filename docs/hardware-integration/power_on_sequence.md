Neutis module has an internal delay(Trst), it is important for the correct power-on process.
Power-on reset signal gets propagated
to CPU 60 ms after 3V3_IN power becomes stable. The diagram below shows that voltage at all
power inputs becomes stable at the same time or with delays (t1, t2) no more
than 1 ms. All power must be stable when power-on reset signal gets to CPU (Trst).

<div style="text-align: ceter;"><img   src="../../img/hardware-integration/power_on_sequence.png" style="width: 800px; "></div><br>
