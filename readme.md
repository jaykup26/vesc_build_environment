## Info

The **Unofficial VESC Build Environment** aims to help new users compile both the firmware and VESC tool without having to setup their own build enviroment.

This is a .ova export from VirtualBox.

## Virtual Machine Image

[VESC_Build_Enviroment_0_10.ova](https://www.dropbox.com/s/garevz75n19nzi6/VESC_Build_Enviroment_0_10.ova?dl=0) - 35GB Download!

## Installing

* Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Download the .ova file for the VESC Build Environment
* Open VirtualBox
* Click File -> Import Appliance and select the downloaded .ova
* Click Start

#### Login

```
Username: vbe
Password: vbe
```

## Use

Once in the desktop, you can navigate to the `~/github` folder to get started.

The `"bldc"` folder links to the `vedderb/bldc` repository on GitHub - https://github.com/vedderb/bldc

The `"vesc_tool"` folder links to the `vedderb/vesc_tool` repository on GitHub - https://github.com/vedderb/vesc_tool

#### Updating Repositories

To update these repositories with the latest and greatest

```
cd ~/github/vedderb/bldc
git checkout origin/master
git pull
```

```
cd ~/github/vedderb/vesc_tool
git checkout origin/master
git pull
```

## Compile the firmware:

```
cd ~/github/vedderb/bldc
make help
```

#### To make a single firmware
```
make 75_300_R2
```

#### To make all firmware and prepair it for use in the VESC Tool compile
```
make all_fw_package
```

## Compile the VESC Tool

#### Compile VESC Tool with QtCreator (recommended)

* Open Qt Creator
* Open the VESC Project
* Make your changes
* Click the |> button to build.

#### Compile VESC Tool with the command line

```
cd ~/github/vedderb/vesc_tool
./build_lin
```

## TODO

* Currently only the Linux build is working.
* Android and Windows builds are still being setup.
