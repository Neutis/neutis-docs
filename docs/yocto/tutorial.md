# Yocto build

The [Yocto Project](https://wiki.yoctoproject.org/wiki/Main_Page) is an open-source project that delivers a set of tools that create operating system images for embedded Linux systems.

## Setting up build host

First of all you need to setup your machine. If your OS differs from Linux you can prepare your build host to use [CROPS](https://git.yoctoproject.org/cgit/cgit.cgi/crops/about/), which leverages [Docker Containers](https://www.docker.com/).

For Native Linux Machine you will need:

* A build host with a minimum of 50 Gbytes of free disk space that is running a supported Linux distribution.
* Appropriate packages installed on the build host.

For a list of distributions that support the Yocto Project, see the ["Supported Linux Distributions"](http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros) section in the Yocto Project Reference Manual.

For build you need to install the [required packages](https://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages) according to your Linux distribution.

## Building

After installing all packages clone repository for building Image for Neutis:

``` bash
git clone git@github.com:emlid/neutis-image.git
```

Next initialize your environment:

``` bash
source init.sh
```

You will be in build directory. After what you can start building image with:

``` bash
bitbake neutis-image
```
Or

``` bash
bitbake neutis-minimal-image
```

`neutis-image` - standard image with ...

`neutis-minimal-image` - a small image just capable of allowing a device to boot
You will find your image here:
`....`

[BitBake](https://www.yoctoproject.org/docs/2.4/bitbake-user-manual/bitbake-user-manual.html#bitbake-user-manual) is the tool at the heart of the OpenEmbedded build system and is responsible for parsing the Metadata, generating a list of tasks from it, and then executing those tasks.

There are some useful arguments for bitbake:

* -k - continue as much as possible after an error
* -D - increase the debug level
* -c clean [target] - clean up your tmp dir for the given package
* -f -c compile [target] - recompile your source code if you change a line in it

You will find your image ...

You can find more information in the official documentation of Yocto Project ...
