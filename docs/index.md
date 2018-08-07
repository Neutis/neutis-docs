<div style="text-align: center;"><img src="img/neutis.png" style="width: 700px;"></div><br>


Neutis is a quad-core system on module for makers and hardware startups.

### Key features

<table id="index_features" style="border: 0;">
<tbody style="background-color: #fff;">
<tr>

<td style="text-align: center;">
  <img
    width="100"
    src="img/quadcore.svg"
    style="max-width: none;"
    align="middle"
  >
</td>

<td style="text-align: center;">
  <img
    width="100"
    src="img/ram.svg"
    style="max-width: none;"
  >
</td>

<td style="text-align: center;">
  <img
    width="100"
    src="img/dimensions.svg"
    style="max-width: none;"
  >
</td>

<td style="text-align: center;">
  <img
    width="100"
    src="img/temp.svg"
    style="max-width: none;"
  >
</td>
</tr>

<tr>

<td>
  <div style="text-align: center; font-size: 1.5em;"><b>Quad-core</b></div>
  <div style="text-align: center;"> 64-bit ARM® Cortex®-A53</div>
</td>

<td>
  <div style="text-align: center; font-size: 1.5em;"><b>8GB/512MB</b></div>
  <div style="text-align: center;">eMMC / DDR3 RAM</div>
</td>

<td>
  <div style="text-align: center; font-size: 1.5em;"><b>41x29.5x4.3mm</b></div>
  <div style="text-align: center;">Compact and light</div>
</td>

<td>
  <div style="text-align: center; font-size: 1.5em;"><b>-20...+70 °C</b></div>
  <div style="text-align: center;">Extended temperature range</div>
</tr>
<tr>

<td style="text-align: center;">
  <img
    width="100"
    src="../../img/mfg-tools.svg"
    style="max-width: none;"
  >
</td>

<td style="text-align: center;">
  <img
    width="100"
    src="../../img/firmware.svg"
    style="max-width: none;"
  >
</td>

<td style="text-align: center;">
  <img
    width="100"
    src="../../img/wireless.svg"
    style="max-width: none;"
  >
</td>

<td style="text-align: center;">
  <img
    width="100"
    src="../../img/cryptochip.svg"
    style="max-width: none;"
  >
</td>

</tr>
<tr>
<td>
  <div style="text-align: center; font-size: 1.5em;"><b>Manufacturing tools</b></div>
  <div style="text-align: center;">
    Software tool for parallel
    flashing of multiple units, component testing and serial number management</td>
 </div>

<td>
  <div style="text-align: center; font-size: 1.5em;"><b>Yocto and OTA</b></div>
  <div style="text-align: center;">
    Neutis BSP is based on Yocto build system. It comes with up-to-date Linux kernel based on mainline version and OTA support
  </div>

</td>
<td>
  <div style="text-align: center; font-size: 1.5em;"><b>Wi-Fi and Bluetooth</b></div>
  <div style="text-align: center;">
    Wi-Fi: 802.11 b/g/n.
    BT: 4.0 dual-mode BLE with onboard antenna and U.FL connector for optional external antenna.</td>
  </div>

<td>
  <div style="text-align: center; font-size: 1.5em;"><b>Secure element</b></div>
  <div style="text-align: center;">
    Tamper-resistant dedicated crypto chip for cryptographic keys and unique ID storage, hashing, random number generation and more
  </div>

</td>
</tr>
</tbody>
</table>

For more complete description please proceed [here](specs/features.md).

### Manufacturing

We’ve made sure that you’re covered with everything you need for hassle-free manufacturing.

<table id="index_manufacturing" style="border: 0;">
<tbody style="background-color: #fff;">

<tr>

    <td style="text-align: center;" >
    <img
        width="100"
        src="img/advantages-neutis/certification.svg"
        style="max-width: none;"
        align="middle"
    >
    </td>

    <td>
        <div style="text-align: left; font-size: 1.5em;"><b>Certification</b></div>
        <div style="text-align: left;">FCC and CE certification for Neutis modules is pending.</div>
    </td>

    <td style="text-align: center;">
    <img
        width="100"
        src="img/advantages-neutis/flashing.svg"
        style="max-width: none;"
    >
    </td>

    <td>
        <div style="text-align: left; font-size: 1.5em;"><b>Parallel flashing</b></div>
        <div style="text-align: left;">Manufacturing software tool can flash multiple units in parallel saving you time and reducing labor hours.</div>
    </td>

</tr>

<tr>

    <td style="text-align: center;">
    <img
        width="100"
        src="img/advantages-neutis/serial-number.svg"
        style="max-width: none;"
    >
    </td>

    <td>
        <div style="text-align: left; font-size: 1.5em;"><b>Serial numbers</b></div>
        <div style="text-align: left;">Each module has a unique ID which allows you to conveniently manage your product batch using the manufacturing tool.</div>
    </td>

    <td style="text-align: center;">
    <img
        width="100"
        src="img/advantages-neutis/china-no-duty.svg"
        style="max-width: none;"
    >
    </td>

    <td>
        <div style="text-align: left; font-size: 1.5em;"><b>No import duty for China</b></div>
        <div style="text-align: left;">Neutis can be obtained in China without any import duty, unlike other SoMs that may cost you 20% more on import. And for sure we ship worldwide.</div>
    </td>
</tr>
</tbody>
</table>

### Development kit

![scheme](img/package_contents.png)</a>

### Getting started

- [Flashing and booting Neutis](quickstart/quickstart.md) with a Linux image
- [Connecting](connectivity/connectivity.md) to Neutis
- [Examples](examples/gpio.md)
- [Pinout](pinout/neutis.md) and [specifications](specs/features.md)
- [Building](yocto/tutorial.md) an own image with [Yocto](yocto/why.md)

### Collaboration

This document can be edited on [GitHub](https://github.com/emlid/neutis-docs) in Markdown. If you find any mistakes, typos or pieces that are not documented well enough simply open an issue or contribute by sending a pull request.
