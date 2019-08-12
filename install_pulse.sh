#!/bin/bash -e

sudo apt-get -y update

if [ ! -f ps-pulse-linux-9.1r1.0-b21-ubuntu-debian-64-bit-installer.deb ] ; then
  wget https://github.com/zhaoqin-github/misc/raw/master/deb/ps-pulse-linux-9.1r1.0-b21-ubuntu-debian-64-bit-installer.deb
fi

sudo dpkg --install ps-pulse-linux-9.1r1.0-b21-ubuntu-debian-64-bit-installer.deb
sudo patch /usr/local/pulse/PulseClient_x86_64.sh PulseClient_x86_64.sh.patch
sudo /usr/local/pulse/PulseClient_x86_64.sh install_dependency_packages
cat timerwell.juniper.net.crt | sudo tee -a /etc/ssl/certs/ca-certificates.crt
#sudo cp timerwell.juniper.net.crt /etc/ssl/certs/ca-certificates.crt
md5sum /etc/ssl/certs/ca-certificates.crt
