#!/bin/bash

# -----------------------------------------------------------------------------
# Bash
# -----------------------------------------------------------------------------

ln -s $(pwd)/bash_aliases ~/.bash_aliases

# -----------------------------------------------------------------------------
# Vim
# -----------------------------------------------------------------------------

apt install vim

ln -s $(pwd)/vim/ ~/.vim
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/gvimrc ~/.gvimrc

# -----------------------------------------------------------------------------
# Git
# -----------------------------------------------------------------------------

ln -s $(pwd)/gitconfig ~/.gitconfig

# -----------------------------------------------------------------------------
# Multimedia Codecs
# -----------------------------------------------------------------------------

apt install ubuntu-restricted-extras

# -----------------------------------------------------------------------------
# Firewall
# -----------------------------------------------------------------------------

ufw enable

# Graphical User Interface.
apt install gufw

# -----------------------------------------------------------------------------
# Debian/Ubuntu customization
# -----------------------------------------------------------------------------

apt install gnome-tweaks
apt install htop

# -----------------------------------------------------------------------------
# Sensors
# -----------------------------------------------------------------------------

# www.lm-sensors.org/wiki/Documentation
apt install lm-sensors
apt install psensor

