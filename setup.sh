#!/bin/bash

# -----------------------------------------------------------------------------
# Resources
# -----------------------------------------------------------------------------

# https://github.com/mikeroyal/Pop_OS-Guide

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
# Security
# -----------------------------------------------------------------------------

# Firewall.
ufw enable
apt install gufw

# -----------------------------------------------------------------------------
# Debian/Ubuntu customization
# -----------------------------------------------------------------------------

apt install gnome-tweaks
apt install htop

# -----------------------------------------------------------------------------
# Sensors
# -----------------------------------------------------------------------------

apt install cpu-x
flatpak --user install flathub io.github.arunsivaramanneo.GPUViewer

apt install stacer

apt install lm-sensors
apt install psensor

flatpak --user install flathub io.github.jorchube.monitorets

flatpak --user install flathub com.github.gpuvis.Gpuvis

# -----------------------------------------------------------------------------
# Hardware control
# -----------------------------------------------------------------------------

# TODO thinkfan

# -----------------------------------------------------------------------------
# Benchmarks
# -----------------------------------------------------------------------------

flatpak --user install flathub com.leinardi.gst

# -----------------------------------------------------------------------------
# Java
# -----------------------------------------------------------------------------

apt install default-jre

# -----------------------------------------------------------------------------
# Games
# -----------------------------------------------------------------------------

apt install lutris

apt install playonlinux

# https://support.system76.com/articles/linux-gaming/

apt install steam
# Enable proton support in Steam > Settings > Compatibility
# Enable shader pre-caching in Downloads > Shader pre-caching
# TODO https://support.system76.com/articles/linux-gaming/#use-protonup-to-manage-custom-proton-versions

# GameHub not supported in Pop!_OS versions later than 20.04 ?
# apt install gamehub

# -----------------------------------------------------------------------------
# Image manipulation
# -----------------------------------------------------------------------------

apt install gimp
apt install krita
apt install inkscape

# -----------------------------------------------------------------------------
# Video
# -----------------------------------------------------------------------------

apt install obs-studio
flatpak --user install flathub com.dec05eba.gpu_screen_recorder

apt install blender

# -----------------------------------------------------------------------------
# Web
# -----------------------------------------------------------------------------

apt install google-chrome-stable

