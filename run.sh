#!/bin/bash
su root
apt-get update && apt-get install sudo -y
sudo su
sudo useradd -m gos
sudo adduser gos sudo
sudo usermod -a -G sudo gos
sudo echo 'gos:gos' | sudo chpasswd
cd /home/gos
git clone https://gitlab.com/gemilanga163/onta.git
cd onta
sudo chown ikuk:sudo gas
sudo -u gos sh -c "/home/gos/onta/gas"
