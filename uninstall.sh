#!/bin/bash

#Setup base-packages
echo ""
echo "*** Uninstalling packages... ***"
sudo pacman -R --noconfirm hyprland waybar alacritty chromium rofi nerd-fonts python-requests dunst swaylock-effects
echo ""
echo "*** Removing config folders in .config folder ***"
sleep 3
echo ""
rm -rf ~/.config/swaylock
rm -rf ~/.config/dunst
rm -rf ~/.config/hypr
rm -rf ~/.config/wlogout
rm -rf ~/.config/waybar

sleep 3
echo ""

echo "*** All done ***"