#!/bin/bash

# git
pacman -S git

# doas
pacman -S doas
touch /etc/doas.conf
echo "permit :wheel" > /etc/doas.conf

# aur helper yay
mkdir git
cd git
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
rm -rf yay-bin
cd ..
rm -rf git

# xfce
pacman -S xfce4

# additionals
pacman -S vim nano firefox gedit libreoffice krita neofetch htop vlc mpv yt-dlp python python-pip
yay -S tor-browser

# update
pacman -Syyu
