#!/bin/bash
su root
apt-get update && apt-get install sudo -y
sudo apt-get install build-essential libssl-dev -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
git clone https://gitlab.com/gemilanga163/onta.git
cd onta
chmod u+x gas
./gas
