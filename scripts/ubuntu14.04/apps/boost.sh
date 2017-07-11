# install boost 1.57

sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev
cd /tmp
wget http://downloads.sourceforge.net/project/boost/boost/1.57.0/boost_1_57_0.tar.bz2
tar xvjf ./boost_1_57_0.tar.bz2
cd boost_1_57_0
./bootstrap.sh --prefix=/opt/boost_1_57_0
sudo ./b2
sudo ./b2 install
