Flasher has user friendly graphical interface.

## Download and run

!!! note ""
    In the meantime, please use Linux operating system to flash your devices. Flash tool for Mac OS X and Windows are coming soon.

* Get the latest version of the app: [**Neutis Manufacturing Flash Tool for Linux**](http://files.emlid.com/flash-tools/linux/neutis-manufacturing-flash-tool-v1.0.0.tar.bz2)


* Using a terminal navigate to directory with downloaded archive and extract it:
```sh
 cd ~/Downloads
 tar -xvf neutis-manufacturing-flash-tool-v1.0.0.tar.bz2 
 cd Neutis\ Manufacturing\ Flash\ Tool/
```
* Run starting script with `sudo`:
```sh
sudo ./neutis-flasher-start.sh
```

## Flashing process

Session starts with initial window prompting you to choose image file and mode (flashing or testing).

<div style="text-align:center"><img src ="../../img/flasher/initial_screen.png"></div>

Then you can connect Neutis units to the PC and flasher will start doing its job.
You will see as many progress bars as many devices you have connected.  
At the end of flashing Neutis sends self-tests results and Flasher shows QR code unique for each Neutis. 

<div style="text-align:center"><img src ="../../img/flasher/passed_tests.png"></div>

In case one or more tests have failed you will see a list of results.  
Here an example of the results view:

<div style="text-align:center"><img src ="../../img/flasher/failed_tests.png"></div>
