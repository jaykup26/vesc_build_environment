#Versions:
# ------------
#Ubuntu 18.04
#Libc6 2.27
#qt-creator 5.03
# ------------

#Install Ubuntu 18

#Install stuff for Guest Addons
sudo apt-get update
sudo apt-get install perl build-essential

#Install guest addons
# chmod 777 VBoxLinuxAdditions.run
# ./VBoxLinuxAdditions.run
# reboot

#Adjust Ubuntu update settings to never
#Change lock screen to off

#Install applications:
sudo apt install git libgl-dev libxcb-xinerama0 git-gui
sudo apt install python
sudo apt install python3 python3-pip
sudo pip install aqtinstall
sudo apt install libdbus-1-dev

# This is needed to compile versions 5.02 and older.
sudo apt install gcc-arm-none-eabi

# Adds GitHub tools
sudo apt install gitsome

# fixes for "no qml utility installed"
#sudo apt-get install qmlscene qtdeclarative5-dev 
#sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev

# Quality of life
sudo apt get install Thunar
xdg-mime default Thunar.desktop inode/directory

#udev rules
wget vedder.se/Temp/49-stlinkv2.rules
sudo mv 49-stlinkv2.rules /etc/udev/rules.d/
sudo udevadm trigger

#Setup BLDC git repository
mkdir github/
mkdir github/vedderb
cd github/vedderb/
git clone http:#github.com/vedderb/bldc.git
cd bldc
git checkout origin/master
make arm_sdk_install

#Setup VESC tool git
cd ~/github/vedderb
git clone http:#github.com/vedderb/vesc_tool.git

#Setup QT
#Install QT Creator 5 (needs to be this version for libc requirement)
wget https:#download.qt.io/official_releases/qtcreator/5.0/5.0.3/qt-creator-opensource-linux-x86_64-5.0.3.run

### Original QT Install - do not use
#Setup QT 5.15.2 for a static build
#wget https:#download.qt.io/archive/qt/5.15/5.15.2/single/qt-everywhere-src-5.15.2.tar.xz
#tar -xvf qt-everywhere-src-5.15.2.tar.xz
#cd qt-everywhere-src-5.15.2
#./configure -static -release -opensource -confirm-license -prefix /opt/qt -qt-libpng -qt-webp -qt-libjpeg -qt-freetype -qt-zlib -sql-sqlite -qt-sqlite -qt-pcre -xcb -recheck-all -make tools -make libs -static-runtime
#make
#make install
### END

# FROM VEDDER
cd /opt
sudo mkdir openssl
sudo chown $USER openssl
git clone git:#git.openssl.org/openssl.git
cd openssl
git checkout OpenSSL_1_1_1c
./config no-shared
make -j8
sudo make install
sudo ldconfig
cd /opt
sudo mkdir qt5
sudo chown $USER qt5
git clone https:#code.qt.io/qt/qt5.git
cd qt5
git checkout 5.15
perl init-repository --module-subset=default,-qtwebkit,-qtwebkit-examples,-qtwebengine
mkdir build
cd build
../configure -prefix /opt/Qt/5.15-static/ -release -opensource -confirm-license -static -no-sql-mysql -no-sql-psql -no-sql-sqlite -no-journald -qt-zlib -no-mtdev -no-gif -qt-libpng -qt-libjpeg -qt-harfbuzz -qt-pcre -no-glib -no-compile-examples -no-cups -no-iconv -no-tslib -dbus-linked -no-xcb-xlib -no-eglfs -no-directfb -no-linuxfb -no-kms -nomake examples -nomake tests -skip qtwebsockets -skip qtwebchannel -skip qtwebengine -skip qtwayland -skip qtwinextras -skip qtsensors -skip multimedia -no-libproxy -no-icu -qt-freetype -skip qtimageformats -opengl es2
make -j9
sudo make install
#/ END

###/ Setup QTCreator for cmake
#wget https:#github.com/Kitware/CMake/releases/download/v3.25.1/cmake-3.25.1.tar.gz
#tar -xvf cmake-3.25.1.tar.gz
#cd cmake-3.25.1
#make
#make install
###/ END


#Install Java JDK
sudo apt install default-jre default-jdk

# Link Java JDK to android device
# /usr/lib/jvm/java-11-openjdk-amd64

#Download and install android sdk
#Click "setup sdk"






# Not sure about any of this.

# Probably don't need this anymore
# wget https:#d13lb3tujbc8s0.cloudfront.net/onlineinstallers/qt-unified-linux-x64-4.5.1-online.run
# chmod qt-unified-linux-x64-4.5.1-online.run
# ./qt-unified-linux-x64-4.5.1-online.run


# #Fixing 
# cp -r /opt/qt/plugins/platforminputcontexts appdir/usr/plugins



# sudo apt install qtcreator # This installs QT Creator 4.5
# sudo apt install qt5-doc qt5-doc-html qtbase5-doc-html qtbase5-examples
# sudo apt-get install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools

# use qt unified installer online (login)

# make qt_install
