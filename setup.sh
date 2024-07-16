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

# -----------------------------------------------------------------------------
# Security
# -----------------------------------------------------------------------------

ufw enable
apt install gufw

apt install keepassxc

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

apt install htop
apt install radeontop
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

wget -P ~/Downloads/ https://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_10.8.4_all.deb
apt install ~/Downloads/phoronix-test-suite_10.8.4_all.deb

apt install stressapptest

# -----------------------------------------------------------------------------
# Programming
# -----------------------------------------------------------------------------

apt install build-essential
apt install cmake

# .............................................................................
# Visual Studio Code
# .............................................................................

# https://code.visualstudio.com/docs/setup/linux
# https://github.com/erik1066/pop-os-setup/blob/master/README.md
apt install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
apt install apt-transport-https
apt update
apt install code

# .............................................................................
# Java
# .............................................................................

apt install default-jre
apt install default-jdk

# .............................................................................
# Python
# .............................................................................

apt install python3-pip python3-venv
mkdir -p ~/venv

# .............................................................................
# Jupyter
# .............................................................................

python3 -m pip install --user jupyterlab

if ! grep -q 'export PATH=~/.local/bin:$PATH' ~/.bashrc; then
    echo '' >> ~/.bashrc
    echo '# add ~/.local/bin to PATH' >> ~/.bashrc
    echo 'export PATH=~/.local/bin:$PATH' >> ~/.bashrc
fi
source ~/.bashrc

echo 'y' | jupyter kernelspec uninstall python3
jupyter lab --generate-config
echo '' >> ~/.jupyter/jupyter_lab_config.py
echo '## Do not display native kernel.' >> ~/.jupyter/jupyter_lab_config.py
echo 'c.KernelSpecManager.ensure_native_kernel = False' >> ~/.jupyter/jupyter_lab_config.py

# Add a virtual environment to Jupyter
# ....................................
# python3 -m venv ~/venv/myproject
# source ~/venv/myproject/bin/activate
# pip install ipykernel
# python -m ipykernel install --user --name=myproject
# deactivate

# -----------------------------------------------------------------------------
# AppImage management
# -----------------------------------------------------------------------------

add-apt-repository ppa:appimagelauncher-team/stable
apt update
apt install appimagelauncher

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

# .............................................................................
# GDLauncher
# .............................................................................

# Manual download of GDLauncher__2.0.9__linux__x64.AppImage on https://gdlauncher.com/
# Setup with AppImageLauncher

# Fix icon, see also https://github.com/gorilla-devs/GDLauncher/issues/411
wget -P https://user-images.githubusercontent.com/66513643/112387891-a3063780-8cf2-11eb-8f36-63051dd9d253.png -O /usr/share/pixmaps/gdlauncher.png
gtk-update-icon-cache /usr/share/pixmaps/*
# ~/.local/share/applications/appimagekit_706862cbd7b28f642adf38dfba81329e-@gddesktop.desktop
# Icon=gdlauncher

# -----------------------------------------------------------------------------
# Other programs
# -----------------------------------------------------------------------------

apt install google-chrome-stable

apt install gimp
apt install krita
apt install inkscape

flatpak install flathub org.kde.okular

apt install texlive-extra-utils

apt install guvcview
apt install cheese

apt install obs-studio

apt install blender
flatpak install flathub net.blockbench.Blockbench￼

# .............................................................................
# Zoom
# .............................................................................

wget -P ~/Downloads/ https://zoom.us/client/6.1.1.443/zoom_amd64.deb
apt install ~/Downloads/zoom_amd64.deb


wget -P ~/Downloads/ https://www.ovito.org/download/master/ovito-basic-3.10.6-x86_64.tar.xz
pushd ~/Downloads/
tar xJfv ovito-basic-3.10.6-x86_64.tar.xz
popd

