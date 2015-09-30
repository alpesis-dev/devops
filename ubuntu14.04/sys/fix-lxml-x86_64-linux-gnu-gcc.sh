#!/usr/bin/env bash

# fixed x86_64-linux-gnu-gcc error when install lxml

sudo apt-get install libxml2-dev libxslt1-dev python-dev
sudo apt-get install zlib1g-dev
sudo apt-get install libevent-dev
sudo pip install lxml
