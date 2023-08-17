#!/bin/bash

#sudo dpkg -i jgmenu_4.4.0-1_amd64.deb

chmod +x zentile_linux_amd64
chmod +x *.sh

cp zentile_linux_amd64 ~/.config/zentile_linux_amd64
cp restart_zentile.sh ~/.config/restart_zentile.sh

#mkdir -p ~/.config/xfce4/terminal
#cp terminalrc ~/.config/xfce4/terminal/terminalrc

#mkdir -p ~/.config/picom
#cp picom.conf ~/.config/picom/picom.conf

#mkdir -p ~/.config/alacritty
#sudo dpkg -i alacritty_0.11.0-1_amd64_bullseye.deb
#cd alacritty
#cp -r * ~/.config/alacritty
#cd ..








##########Initialise##############
~/.config/zentile_linux_amd64 &
#sleep 2
#cp config.toml ~/.config/config.toml
