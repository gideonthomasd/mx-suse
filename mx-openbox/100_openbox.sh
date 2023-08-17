#!/bin/bash

#sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo
#sudo zypper refresh
sudo zypper install openbox
sudo zypper install  tint2 feh lxappearance lxtask lxsession pcmanfm xfce4-terminal conky rofi geany picom neofetch yt-dlp parcellite audacious 
#sudo zypper install  yaru-theme-gtk yaru-theme-icon i3lock-fancy 
sudo zypper install  lxpolkit dmenu jgmenu gsimplecal 

#Install brave
#sudo apt install curl
#sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
#echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#sudo apt update
#sudo apt install brave-browser



mkdir -p ~/.config/conky
cp sysinfo_mbcolor.conkyrc ~/.config/conky

#mkdir -p ~/.local/share/fonts
#cd Mononoki
#cp -r * ~/.local/share/fonts
#cd ..

cd tint2
chmod +x *.sh
cd scripts
chmod +x volumettf
chmod +x *.sh
cd ..
cd ..

mkdir -p ~/.config/tint2
cd tint2
cp -r * ~/.config/tint2
cd ..

mkdir -p ~/.config/openbox
cd openbox
chmod +x *.sh
cp -r * ~/.config/openbox
cd ..

mkdir -p ~/.config/jgmenu
cp jgmenurc ~/.config/jgmenu
cp append.csv ~/.config/jgmenu
cp prepend.csv ~/.config/jgmenu

#cp log.sh ~/log.sh
#cp bashrc ~/.bashrc

mkdir -p ~/.themes
tar -xzvf theme.tar.gz
cd themes
cp -r * ~/.themes
cd ..

mkdir -p ~/Pictures/wallpapers
cd wallpapers
cp -r * ~/Pictures/wallpapers
cd ..
