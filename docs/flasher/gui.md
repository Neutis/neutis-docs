Flasher has user friendly graphical interface.

Get the latest version:

| Flasher Intsaller |
|------------|
| [**Linux**]() |

!!! tip "Windows version"
    Coming soon!

## Installing Flasher
* From terminal
```sh
 cd <directory_with_installer>
 chmod +x neutis-manufacturing-flash-tool-v1.0.0.run
```
* Run installer
* Pick the installation folder
* Wait for the installation to complete

## Flashing process
Run application from terminal:
```sh
 cd <installation_directory>
 sudo ./neutis-flasher-start.sh
```

Session starts with initial window prompting you to choose image file and mode (flashing or testing).

<div style="text-align:center"><img src ="../../img/flasher/initial_screen.png"></div>

Then you can connect Neutis units to the PC and flasher will start doing its job.
You will see as many progress bars as many devices you have connected.  
At the end of flashing Neutis sends self-tests results and Flasher shows QR code unique for each Neutis. 

<div style="text-align:center"><img src ="../../img/flasher/passed_tests.png"></div>

In case one or more tests have failed you will see a list of results.  
Here an example of the results view:

<div style="text-align:center"><img src ="../../img/flasher/failed_tests.png"></div>
