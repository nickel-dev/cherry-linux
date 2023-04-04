#!/bin/bash

# git
pacman -S git

# doas
pacman -S doas
touch /etc/doas.conf
echo "permit :wheel" > /etc/doas.conf

# ly display manager
git clone https://github.com/fairyglade/ly
cd ly
make install installsystemd
systemctl enable ly.service
cd ..
rm -rf ly

# xfce
pacman -S xfce4

# additionals
pacman -S vim nano firefox gedit libreoffice krita neofetch htop vlc mpv yt-dlp python python-pip

# update
pacman -Syyu
