#!/bin/bash
apt update 
apt dist-upgrade -y
cd ~/
git clone https://github.com/MISP/MISP-maltego.git 
cd ~/MISP-maltego 
sudo pip3 install . 
canari create-profile MISP_maltego
cp ~/easymode/MISP_maltego.conf ~/.canari/MISP_maltego.conf 
cp ~/MISP-maltego/MISP_maltego.mtz ~/Desktop
cd ~/
git clone https://github.com/WeaverHeavy/otx_transforms.git 
cp ~/otx_transforms/otx.py ~/Desktop
cp ~/otx_transforms/alienvault.mtz ~/Desktop/
maltego &

