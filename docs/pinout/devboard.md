## Devboard Pinout

### Entire board
<a href="../../img/pinout/dev_board_pinout.png" target="_blank"> ![scheme](../../img/pinout/dev_board_pinout.png)</a>

### Main header (X6)
<a href="../../img/pinout/X6.png" target="_blank"> ![scheme](../../img/pinout/X6.png)</a>

!!! tip
    You can click on the column header to sort by it

<div class="x6-header-table-start"></div>

|Physical|Allwinner|Alt2|Alt3|Alt4|Alt5|Alt6
|:-:|:-:|:--:|:--:|:--:|:--:|:--:|
|5|PA0|UART2_TX|JTAG_MS|-|-|PA_EINT0|
|7|PA1|UART2_RX|JTAG_CK|-|-|PA_EINT1|
|9|PA2|UART2_RTS|JTAG_DO|-|-|PA_EINT2|
|11|PA3|UART2_CTS|JTAG_DI|-|-|PA_EINT3|
|6|PA13|SPI1_CS|UART3_TX|-|-|PA_EINT13|
|8|PA14|SPI1_CLK|UART3_RX|-|-|PA_EINT14|
|10|PA15|SPI1_MOSI|UART3_RTS|-|-|PA_EINT15|
|12|PA16|SPI1_MISO|UART3_CTS|-|-|PA_EINT16|
|15|PC0|NAND_WE|NAND_WE|NAND_WE|NAND_WE|NAND_WE|
|17|PC1|NAND_ALE|NAND_ALE|NAND_ALE|NAND_ALE|NAND_ALE|
|19|PC2|NAND_CLE|NAND_CLE|NAND_CLE|NAND_CLE|NAND_CLE|
|21|PC3|NAND_CE1|NAND_CE1|NAND_CE1|NAND_CE1|NAND_CE1|
|16|PA6|SIM_PWREN|SIM_PWREN|SIM_PWREN|SIM_PWREN|SIM_PWREN|
|18|PA7|SIM_CLK|SIM_CLK|SIM_CLK|SIM_CLK|SIM_CLK|
|20|PA8|SIM_DATA|SIM_DATA|SIM_DATA|SIM_DATA|SIM_DATA|
|22|PA9|SIM_RST|SIM_RST|SIM_RST|SIM_RST|SIM_RST|
|24|PA10|SIM_DET|SIM_DET|SIM_DET|SIM_DET|SIM_DET|
|27|PL6|S_JTAG_DO|S_JTAG_DO|S_JTAG_DO|S_JTAG_DO|S_JTAG_DO|
|28|PA18|PCM0_SYNC|PCM0_SYNC|PCM0_SYNC|PCM0_SYNC|PCM0_SYNC|
|29|PL11|S_CIR_RX|S_CIR_RX|S_CIR_RX|S_CIR_RX|S_CIR_RX|
|31|PL10|S_PWM|S_PWM|S_PWM|S_PWM|S_PWM|
|30|PA19|PCM0_CLK|PCM0_CLK|PCM0_CLK|PCM0_CLK|PCM0_CLK|
|32|PA20|PCM0_DOUT|PCM0_DOUT|PCM0_DOUT|PCM0_DOUT|PCM0_DOUT|
|34|PA21|PCM0_DIN|PCM0_DIN|PCM0_DIN|PCM0_DIN|PCM0_DIN|
|36|PA11|TWI0_SCK|TWI0_SCK|TWI0_SCK|TWI0_SCK|TWI0_SCK|
|38|PA12|TWI0_SDA|TWI0_SDA|TWI0_SDA|TWI0_SDA|TWI0_SDA|
|41|PL1|S_TWI_SDA|S_TWI_SDA|S_TWI_SDA|S_TWI_SDA|S_TWI_SDA|
|42|PL0|S_TWI_SCK|S_TWI_SCK|S_TWI_SCK|S_TWI_SCK|S_TWI_SCK|
|43|PL3|S_UART_RX|S_UART_RX|S_UART_RX|S_UART_RX|S_UART_RX|
|44|PL2|S_UART_TX|S_UART_TX|S_UART_TX|S_UART_TX|S_UART_TX|

### Camera header (X7)
<a href="../../img/pinout/X7.png" target="_blank"> ![scheme](../../img/pinout/X7.png)</a>

### SDIO0 header (X10), audio header (X13)
<a href="../../img/pinout/X10_X13.png" target="_blank"> ![scheme](../../img/pinout/X10_X13.png)</a>

### UART header (X1,X15), USB3 header (X18)
<a href="../../img/pinout/X1_X15_X18.png" target="_blank"> ![scheme](../../img/pinout/X1_X15_X18.png)</a>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.2/tablesort.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.2/sorts/tablesort.number.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        new Tablesort($('div.x6-header-table-start').next().find('table')[0]);
    });
</script>
<script>
</script>
