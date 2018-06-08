## Layout guide

Using multilayer board provides easy-to-use layout of Neutis interfaces
and power lanes. Pay attention to following recommendations during
making a custom PCB for Neutis:

- Use one of PCB layers as GND plane and connect all GND pins of Neutis
  connector to this layer with vias.

- Place DC/DC for power Neutis as close as possible to connector. If you
  use high standoffs and connectors (> 3,00 mm) you can place DC/DC
  under Neutis in the same layer with Neutis connectors

- Match length of high speed signal lanes. SDIO, CSI, HDMI, EPHY lines
  are matched with 0.05 mm tolerance in Neutis.

Placement of connectors and standoffs shown in the picture bellow. Use
this footprint in your project with Neutis.
Also look at connectors and standoffs documentation before layout
([https://www.hirose.com](https://www.hirose.com) ,
[https://www.we-online.com](https://www.we-online.com)).

<a href="../../img/hardware-integration/neutis_layout_guide.png" target="_blank"> ![scheme](../../img/hardware-integration/neutis_layout_guide.png)</a>
