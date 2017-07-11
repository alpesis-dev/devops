# install boost 1.57

sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev
cd /tmp
wget http://downloads.sourceforge.net/project/boost/boost/1.57.0/boost_1_57_0.tar.bz2
tar xvjf ./boost_1_57_0.tar.bz2
cd boost_1_57_0
# ./bootstrap.sh --prefix=/opt/boost_1_57_0
./bootstrap.sh --prefix=/usr/local
sudo ./b2
sudo ./b2 install

# export BUILDDIR='your path to  build directory here'
# export SRCDIR='your path to source dir here'
# export BOOST_ROOT="/opt/boost/boost_1_57_0"
# export BOOST_INCLUDE="/opt/boost/boost-1.57.0/include"
# export BOOST_LIBDIR="/opt/boost/boost-1.57.0/lib"
# export BOOST_OPTS="-DBOOST_ROOT=${BOOST_ROOT} -DBOOST_INCLUDEDIR=${BOOST_INCLUDE} -DBOOST_LIBRARYDIR=${BOOST_LIBDIR}"
# (cd ${BUILDDIR} && cmake ${BOOST_OPTS} ${SRCDIR})
