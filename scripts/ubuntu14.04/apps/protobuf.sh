https://github.com/google/protobuf.git
cd protobuf
./autogen.sh
sudo ./configure
sudo make
sudo make check
sudo make install
protoc --version

sudo ldconfig
protoc --version
