##################################################################################################
# OpenCV Installation Guide
#
# ref: http://www.pyimagesearch.com/2015/07/20/install-opencv-3-0-and-python-3-4-on-ubuntu/
##################################################################################################

# prerequisites
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential cmake git pkg-config
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libgtk2.0-dev
sudo apt-get install libatlas-base-dev gfortran

# python
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install virtualenv virtualenvwrapper
# virtualenv and virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source ~/.bashrc
mkvirtualenv cv
# python deps
sudo apt-get install python3.4-dev
pip install numpy
sudo rm -rf ~/.cache/pip/
pip install numpy

# opencv
cd ~
git clone https://github.com/Itseez/opencv.git
cd opencv
git checkout 3.0.0
# opencv contrib
cd ~
git clone https://github.com/Itseez/opencv_contrib.git
cd opencv_contrib
git checkout 3.0.0
# install
cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
	-D BUILD_EXAMPLES=ON ..
make -j4
sudo make install
sudo ldconfig

# opencv for python
cd ~/.virtualenvs/cv/lib/python3.4/site-packages/
ln -s /usr/local/lib/python3.4/site-packages/cv2.cpython-34m.so cv2.so
# test
workon cv
python
# >>> import cv2
# >>> cv2.__version__
