#!/bin/bash
su root
apt-get update && apt-get install sudo -y
sudo su
git clone https://gitlab.com/gemilanga163/onta.git
cd onta
chmod u+x gas
./gas
