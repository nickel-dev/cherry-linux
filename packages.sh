#!/bin/bash

# git
pacman -S git

# doas
pacman -S doas
touch /etc/doas.conf
echo "permit :wheel" > /etc/doas.conf

# xfce
pacman -S xfce4

# ly display manager
git clone https://github.com/fairyglade/ly --recursive
cd ly
make install installsystemd
systemctl enable ly.service
cd ..
rm -rf ly

# additionals
pacman -S vim nano firefox gedit krita neofetch htop vlc mpv yt-dlp python python-pip

# update
pacman -Syyu
