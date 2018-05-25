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

### Camera header (X7)
<a href="../../img/pinout/X7.png" target="_blank"> ![scheme](../../img/pinout/X7.png)</a>

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
