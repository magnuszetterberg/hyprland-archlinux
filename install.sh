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
sudo pacman -S hyprland hyprpaper git waybar alacritty chromium wofi code nerd-fonts python-requests dunst brightnessctl pavucontrol pipewire-alsa pipewire-pulse wireplumber pipewire-audio sof-firmware lib32-pipewire
echo ""
echo "*** Installing yay  ***"
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si
echo ""
echo ""
echo "*** Installing yay packages... ***"
yay -S swaylock-effects wlogout pamixer


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
echo "*** Creating symlinks from repo to ~/.config folder ***"
sleep 3
echo ""
sleep 3
find . -type d -exec ln -s $(pwd)/{} ~/.config/{} \;
echo ""

echo "*** All done ***"
