#!/bin/bash

#Setup base-packages
echo "*** Updating system ***"
echo ""
sudo pacman -Suy
echo ""
echo "** Updating done **"
echo "*******************"
echo ""
echo "*** Installing pacman packages... ***" 
sudo pacman -S kitty stow hyprland hyprpaper hyprlock hypridle git waybar alacritty chromium wofi nerd-fonts python-requests dunst brightnessctl pavucontrol pipewire-alsa pipewire-pulse wireplumber pipewire-audio sof-firmware lib32-pipewire
echo ""
echo "*** Setting up yay ***"
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
echo ""
echo "yay installed"
echo ""
echo "*** Installing yay packages... ***"
yay -S swaylock-effects wlogout pamixer swaync visual-studio-code-bin
echo ""
cd hyprland-archlinux
echo ""
echo "*** Creating symlinks from with stow to ~/.config folder ***"
echo ""
stow -t ~/.config .
echo ""
echo "*** All done ***"
