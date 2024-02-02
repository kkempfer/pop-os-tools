#!/bin/bash

# -----------------------------------------------------------------------------
# Resources
# -----------------------------------------------------------------------------

# https://github.com/mikeroyal/Pop_OS-Guide

# -----------------------------------------------------------------------------
# Tweaks
# -----------------------------------------------------------------------------

ln -s $(pwd)/bash_aliases ~/.bash_aliases

apt install vim
ln -s $(pwd)/vim/ ~/.vim
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/gvimrc ~/.gvimrc

ln -s $(pwd)/gitconfig ~/.gitconfig

apt install ubuntu-restricted-extras
apt install gnome-tweaks
apt install htop

ufw enable
apt install gufw

# -----------------------------------------------------------------------------
# Servers
# -----------------------------------------------------------------------------

# .............................................................................
# OneDrive
# .............................................................................

# https://github.com/abraunegg/onedrive
wget -qO - https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /usr/share/keyrings/obs-onedrive.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/ ./" | sudo tee /etc/apt/sources.list.d/onedrive.list
sudo apt update
sudo apt install --no-install-recommends --no-install-suggests onedrive

onedrive
onedrive --synchronize

apt install keepassxc

# .............................................................................
# OpenSSH
# .............................................................................

apt install openssh-server

# Open the SSH port (firewall)
ufw allow ssh

# Disable and stop the ssh service
# systemctl disable ssh --now

# Enable and start the ssh service
# systemctl enable ssh --now

# -----------------------------------------------------------------------------
# Sensors
# -----------------------------------------------------------------------------

apt install cpu-x
apt install stacer
apt install lm-sensors
apt install psensor
flatpak --user install flathub io.github.arunsivaramanneo.GPUViewer
flatpak --user install flathub io.github.jorchube.monitorets
flatpak --user install flathub com.github.gpuvis.Gpuvis

# -----------------------------------------------------------------------------
# Hardware control
# -----------------------------------------------------------------------------

# Fans
apt install thinkfan

# Audio
apt install pavucontrol

# Glorious Model O Wireless
# Wireless model is likely not supported. To investigate later
# https://github.com/outfoxxed/glorious-mouse-control
# https://github.com/enkore/gloriousctl
# https://github.com/libratbag/libratbag

# Nintendo Switch Joy-Con
apt install libevdev-dev
git clone https://github.com/DanielOgorchock/joycond ~/Repositories/joycond
pushd ~/Repositories/joycond
cmake .
make install
systemctl enable --now joycond
popd

# -----------------------------------------------------------------------------
# Benchmarks
# -----------------------------------------------------------------------------

flatpak --user install flathub com.leinardi.gst

wget -P ~/Downloads/ https://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_10.8.4_all.deb
apt install ~/Downloads/phoronix-test-suite_10.8.4_all.deb

apt install stressapptest

# -----------------------------------------------------------------------------
# Programming
# -----------------------------------------------------------------------------

apt install build-essential
apt install cmake

# .............................................................................
# Java
# .............................................................................

apt install default-jre

# -----------------------------------------------------------------------------
# Games
# -----------------------------------------------------------------------------

apt install steam
# https://askubuntu.com/questions/1378348/steam-launches-using-terminal-but-not-with-launcher-icon-ubuntu-21-10-nvidia
sed -i 's/PrefersNonDefaultGPU=true/PrefersNonDefaultGPU=false/g' /usr/share/applications/steam.desktop
# Enable proton support in Steam > Settings > Compatibility
# Enable shader pre-caching in Downloads > Shader pre-caching

apt install lutris

apt install playonlinux

# TODO https://support.system76.com/articles/linux-gaming/#use-protonup-to-manage-custom-proton-versions

# -----------------------------------------------------------------------------
# Other programs
# -----------------------------------------------------------------------------

apt install google-chrome-stable

flatpak install flathub com.authy.Authy

apt install gimp
apt install krita
apt install inkscape

apt install texlive-extra-utils

apt install guvcview
apt install cheese

apt install obs-studio

apt install blender

# -----------------------------------------------------------------------------
# Pop!_Shop
# -----------------------------------------------------------------------------

# Skype
# Master PDF Editor

