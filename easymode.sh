#!/bin/bash
apt update 
apt upgrade -y
cd ~/
git clone https://github.com/MISP/MISP-maltego.git 
cd ~/MISP-maltego 
sudo pip3 install . 
canari create-profile MISP_maltego 
cp ~/MISP-maltego/MISP_maltego.mtz ~/Desktop
cd ~/
git clone https://github.com/brianwarehime/otx_transforms.git 
cp ~/otx_transforms/otx.py ~/Desktop
cp ~/otx_transforms/alienvault.mtz ~/Desktop/
echo ****************Done!****************
echo ****************starting Maltego.....****************
maltego &


