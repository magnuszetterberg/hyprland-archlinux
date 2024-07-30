#!/bin/bash

#Setup base-packages
echo "*** Updating system ***"
echo ""
sudo pacman -Suy
echo ""
echo "** Updating done **"
echo "*******************"
echo ""
echo "*** Installing needed packages... ***"
sudo pacman -S --noconfirm hyprland hyprpaper git waybar alacritty chromium rofi code nerd-fonts python-requests dunst
echo ""
echo "*** Installing yay  ***"
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si
echo ""
echo "*** Installing yay packages... ***"
sudo yay -S --noconfirm swaylock-effects wlogout pamixer


# clone the config to .
echo ""
echo "*** cloning git repo ***"
echo ""
sleep 3
git clone https://github.com/magnuszetterberg/hyprland-archlinux.git
echo ""
echo "************************"

cd hyprland-archlinux
echo ""
echo "*** Copying config to .config folder ***"
sleep 3
echo ""
cp -r ./* ~/.config/
sleep 3
echo ""

echo "*** All done ***"
