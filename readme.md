The Unofficial VESC Build Environment aims to help new users compile both the firmware and VESC tool without having to setup their own build enviroment.

This is a .ova export from VirtualBox.

To use:

Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
Download the .ova file for the VESC Build Environment
Open VirtualBox
Click File -> Import Appliance and select the downloaded .ova
Click Start

Username: vbe
Password: vbe

Once in the desktop, you can navigate to the ~/github folder to get started.

The "bldc" folder links to the vedderb/bldc repository on GitHub - https://github.com/vedderb/bldc
The "vesc_tool" folder links to the vedderb/vesc_tool repository on GitHub - https://github.com/vedderb/vesc_tool

To update these repositories with the latest and greatest

cd ~/github/vedderb/bldc
git checkout origin/master
git pull

cd ~/github/vedderb/vesc_tool
git checkout origin/master
git pull

To compile the firmware:

cd ~/github/vedderb/bldc
make \[firmware_name\]
Example: make 75_300_R2

To compile the VESC Tool you can do it in two different ways.

Open Qt Creator
Open the VESC Project
Make your changes
Click the |> button to build.

Or

cd ~/github/vedderb/vesc_tool
./build_lin

Currently only the Linux build is working.
Android and Windows builds are still being setup.