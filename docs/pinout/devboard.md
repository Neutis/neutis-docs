# Dev Board Pinout

<a href="../../img/pinout/dev_board_pinout.png" target="_blank"> ![scheme](../../img/pinout/dev_board_pinout.png)</a>

### Main header (X6)
<a href="../../img/pinout/X6.png" target="_blank"> ![scheme](../../img/pinout/X6.png)</a>

!!! tip
    Click on the column header to sort

<div class="x6-header-table-start"></div>

|Physical|Allwinner|Alt2|Alt3|Alt6|
|:-:|:-:|:--:|:--:|:--:|
|5|PA0|UART2_TX|JTAG_MS|PA_EINT0|
|7|PA1|UART2_RX|JTAG_CK|PA_EINT1|
|9|PA2|UART2_RTS|JTAG_DO|PA_EINT2|
|11|PA3|UART2_CTS|JTAG_DI|PA_EINT3|
|6|PA13|SPI1_CS|UART3_TX|PA_EINT13|
|8|PA14|SPI1_CLK|UART3_RX|PA_EINT14|
|10|PA15|SPI1_MOSI|UART3_RTS|PA_EINT15|
|12|PA16|SPI1_MISO|UART3_CTS|PA_EINT16|
|15|PC0|NAND_WE|SPI0_MOSI|-|
|17|PC1|NAND_ALE|SPI0_MISO|-|
|19|PC2|NAND_CLE|SPI0_CLK|-|
|21|PC3|NAND_CE1|SPI0_CS|-|
|16|PA6|-|PWM1|PA_EINT6|
|18|PA7|-|-|PA_EINT7|
|20|PA8|-|-|PA_EINT8|
|22|PA9|-|-|PA_EINT9|
|24|PA10|-|-|PA_EINT10|
|27|PL6|-|-|S_PL_EINT6|
|28|PA18|PCM0_SYNC|TWI1_SCK|-|-|PA_EINT18|
|29|PL11|S_CIR_RX|-|S_PL_EINT12|
|31|PL10|S_PWM|-|-|-|S_PL_EINT10|
|30|PA19|PCM0_CLK|TWI1_SDA|PA_EINT19|
|32|PA20|PCM0_DOUT|-|PA_EINT20|
|34|PA21|PCM0_DIN|-|PA_EINT21|
|36|PA11|TWI0_SCK|DI_TX|PA_EINT11|
|38|PA12|TWI0_SDA|DI_RX|PA_EINT12|
|41|PL1|S_TWI_SDA|-|S_PL_EINT1|
|42|PL0|S_TWI_SCK|-|S_PL_EINT0|
|43|PL3|S_UART_RX|-|S_PL_EINT3|
|44|PL2|S_UART_TX|-|S_PL_EINT2|

### Camera header (X7)
<a href="../../img/pinout/X7.png" target="_blank"> ![scheme](../../img/pinout/X7.png)</a>

<div class="x7-header-table-start"></div>

|Physical|Allwinner|Alt2|Alt3|Alt6
|:-:|:-:|:--:|:--:|:--:|
|3|PE1|CSI_MCLK|TS_ERR|-|
|4|PE0|CSI_PCLK|TS_CLK|-|
|7|PE2|CSI_HSYNC|TS_SYNC|-|
|8|PE3|CSI_VSYNC|TS_DVLD|-|
|9|PE4|CSI_D0|TS_D0|-|
|10|PE5|CSI_D1|TS_D1|-|
|11|PE6|CSI_D2|TS_D2|-|
|12|PE7|CSI_D3|TS_D3|-|
|13|PE8|CSI_D4|TS_D4|-|
|14|PE9|CSI_D5|TS_D5|-|
|15|PE10|CSI_D6|TS_D6|-|
|16|PE11|CSI_D7|TS_D7|-|
|17|PE12|CSI_SCK|TWI2_SCK|-|
|19|PE13|CSI_SDA|TWI2_SDA|-|
|21|PE14|-|-|-|
|22|PE15|-|-|-|

### SDIO0 header (X10), audio header (X13)
<a href="../../img/pinout/X10_X13.png" target="_blank"> ![scheme](../../img/pinout/X10_X13.png)</a>

<div class="x10-header-table-start"></div>

|Physical|Allwinner|Alt2|Alt3|Alt6
|:-:|:-:|:--:|:--:|:--:|
|2|PF1|SDC0_D0|JTAG_DI|-|
|3|PF0|SDC0_D1|JTAG_MS|-|
|4|PF2|SDC0_CLK|UART0_TX|-|
|5|PF3|SDC0_CMD|JTAG_DO|-|
|6|PF5|SDC0_D2|JTAG_CK|-|
|7|PF4|SDC0_D3|UART0_RX|-|
|8|PF6|SDC0_DET|-|-|

### UART header (X1,X15), USB3 header (X18)
<a href="../../img/pinout/X1_X15_X18.png" target="_blank"> ![scheme](../../img/pinout/X1_X15_X18.png)</a>

|Physical|Allwinner|Alt2|Alt3|Alt6
|:-:|:-:|:--:|:--:|:--:|
|1|PA4|UART0_TX|-|PA_EINT4|
|3|PA5|UART0_RX|PWM0|PA_EINT5|

!!! Tip
    Allwinner H5 data sheet is available on [this page](../hardware-integration/allwinner.md)

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.2/tablesort.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.2/sorts/tablesort.number.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        new Tablesort($('div.x6-header-table-start').next().find('table')[0]);
        new Tablesort($('div.x7-header-table-start').next().find('table')[0]);
        new Tablesort($('div.x10-header-table-start').next().find('table')[0]);
    });
</script>
<script>
</script>
