sudo apt-get update
sudo apt-get install linux-image-generic-lts-trusty
sudo reboot

which curl
sudo apt-get install curl
curl -sSL https://get.docker.com/ | sh
curl -sSL https://get.docker.com/gpg | sudo apt-key add -

sudo docker run hello-world
sudo usermod -aG docker ubuntu
sudo docker run -it ubuntu bash

