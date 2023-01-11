#Windows setup
# Not yet working
sudo apt update
sudo apt upgrade
pip install -U pip
pip3 install -U pip

sudo apt-get install autoconf automake autopoint bash bison bzip2 flex gettext git g++ gperf intltool libffi-dev libgdk-pixbuf2.0-dev libtool libltdl-dev libssl-dev libxml-parser-perl make openssl p7zip-full patch perl pkg-config python ruby scons sed unzip wget xz-utils g++-multilib libc6-dev-i386 libtool-bin lzip python-mako
sudo apt-get install autoconf automake autopoint bash bison bzip2 flex g++ g++-multilib gettext git gperf intltool libc6-dev-i386 libgdk-pixbuf2.0-dev libltdl-dev libgl-dev libssl-dev libtool-bin libxml-parser-perl lzip make openssl p7zip-full patch perl python3 python3-mako python3-pkg-resources ruby sed unzip wget xz-utils

sudo apt-get install --reinstall python-pkg-resources

make qtbase
make qtserialport
make qtconnectivity
make qtquickcontrols
make qtquickcontrols2
make qtserialbus
make qtlocation
make qtgamepad
make qtgraphicaleffects
