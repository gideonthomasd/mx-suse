#!/bin/bash

#sudo dnf install \
  #https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  
#sudo dnf install \
  #https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

###Install Packman#############
sudo zypper ar -cfp 90 https://ftp.fau.de/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper dup --from packman --allow-vendor-change


  
sudo zypper install flatpak
  
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo cp chadwm.desktop /usr/share/xsessions/chadwm.desktop
sudo cp chad-exec.sh /usr/bin/chad-exec

######## Rofi ##########################
cd rofi
cd applets
cd applets
chmod +x *.sh
cd ..
cd ..
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..

mkdir -p ~/.config/rofi
cd rofi
cp -r * ~/.config/rofi
cd ..
########################################

cd arco-chadwm
cd scripts
chmod +x *.sh
cd ..
cd launcher
chmod +x *.sh
cd ..
cd ..

mkdir -p ~/.config/arco-chadwm
cd arco-chadwm
cp -r * ~/.config/arco-chadwm
cd ..

mkdir -p ~/.config/jgmenu
cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

mkdir -p ~/.local/share/fonts
cd fonts
cp -r * ~/.local/share/fonts
cd ..

mkdir -p ~/.config/xfce4/terminal
mkdir -p ~/.config/lxterminal

cp terminalrc ~/.config/xfce4/terminal
cp lxterminal.conf ~/.config/lxterminal

cp log.sh ~/log.sh
cp bashrc ~/.bashrc

#sudo apt install gdebi gdebi-core -y

#sudo dpkg -i jgmenu_4.4.1-1_amd64.deb
#sudo gdebi jgmenu_4.4.1-1_amd64.deb

####Installation#########
###Fedora################
#sudo dnf copr enable tokariew/i3lock-color
#sudo dnf install i3lock-color -y

#sudo dnf remove pipewire
sudo zypper install xfce4-genmon-plugin xfce4-weather-plugin

sudo zypper install audacious make gcc libXft-devel libX11-devel libXinerama-devel imlib2 imlib2-devel xsetroot 

sudo zypper install lxpolkit rofi dmenu curl pcmanfm xfce4-terminal lxterminal moc parcellite picom sxhkd lxappearance
sudo zypper install jgmenu neofetch xdotool feh geany ffmpeg lxtask pavucontrol calcurse htop 

#libx11-dev libxft-dev libimlib2 libimlib2-dev libxinerama-dev build-essential

cp config.rasi ~/.config/rofi/config.rasi
sudo yast2 -i volumeicon-0.5.1-1.130.x86_64.rpm
######Chadwm#############
cd ~/.config/arco-chadwm/chadwm
sudo make clean install

sudo zypper install yt-dlp

