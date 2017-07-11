# -------------------------------------------------------------------------- #
# libbitcoin installation
# ref: https://github.com/libbitcoin/libbitcoin/blob/version2/README.md
# -------------------------------------------------------------------------- #

g++ --version
sudo apt-get install g++-4.8
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-4.8 50

sudo apt-get install build-essential autoconf automake libtool pkg-config
sudo apt-get install libboost-all-dev

wget https://raw.githubusercontent.com/libbitcoin/libbitcoin/version2/install.sh
chmod +x install.sh
sudo ./install.sh
