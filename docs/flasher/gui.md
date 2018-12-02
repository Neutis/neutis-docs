Flasher has user friendly graphical interface.

## Download and run

Neutis Manufacturing Flash Tool is available for Linux and Windows

#### Linux

!!! warning
    Do not launch Neutis Manufacturing Flash Tool with **sudo** on Linux

##### Deb package

* Download [neutis-manufacturing-flash-tool_1.2.1_all.deb](http://files.emlid.com/flash-tools/linux/neutis-manufacturing-flash-tool_1.2.1_all.deb)

* Using terminal navigate to the directory with the downloaded file and install it:

```sh
sudo dpkg -i neutis-manufacturing-flash-tool_1.2.1_all.deb
```

* After installation, you'll find the app in the applications list

<div style="text-align:center"><img src ="../../img/flasher/unity_dash.png" width=800></div>


##### Tar archive

* Download [neutis-manufacturing-flash-tool_1.2.1.tar.bz2](http://files.emlid.com/flash-tools/linux/neutis-manufacturing-flash-tool_1.2.1.tar.bz2)

* Using terminal navigate to the directory with the downloaded archive and extract it:

```sh
 cd ~/Downloads
 tar -xvf neutis-manufacturing-flash-tool_1.2.1.tar.bz2
 cd Neutis\ Manufacturing\ Flash\ Tool/
```

* Run installation script to set up **udev rules** for Neutis:

```sh
sudo ./install.sh
```

* Launch the application:

```sh
./neutis-flasher-start.sh
```

#### Windows

* Download [neutis-manufacturing-flash-tool_1.2.1_setup.exe](http://files.emlid.com/flash-tools/win/neutis-manufacturing-flash-tool_1.2.1_setup.exe)
* Launch it and follow the installation wizard
* After installation you'll find Neutis Manufacturing Flash Tool shortcut on the desktop and in the Start menu

!!! note
    During the first launch of the app Windows may ask you for network access, bacause Flasher's inner architecture is based on client-server structure.
    The application doesn't send any data over the Internet.

## Flashing process

Session starts with initial window prompting you to choose mode (flashing or testing).

<div style="text-align:center"><img src ="../../img/flasher/start_screen.png"></div>

In flashing mode you also need to select firmware image.

<div style="text-align:center"><img src ="../../img/flasher/firmware_selected.png"></div>

Press  **Start** to proceed.

Now you can connect Neutis units to the PC and flasher will start doing its job. From this moment the app doesn't require any user input.

You will see as many progress bars as many devices you have connected.  
The whole flashing procedure consists of 3 steps:

* Device initializing
* Firmware flashing
* Hardware testing

!!! warning
    In case something went wrong during initialization step and error occured, please disconnect Neutis from PC to prevent unit overheating

At the end of hardware testing Neutis sends self-tests results and Flasher shows QR code unique for each Neutis.

<div style="text-align:center"><img src ="../../img/flasher/passed_tests.png"></div>

In case one or more tests have failed you will see a list of results.  
Here an example of the results view:

<div style="text-align:center"><img src ="../../img/flasher/failed_tests.png"></div>
