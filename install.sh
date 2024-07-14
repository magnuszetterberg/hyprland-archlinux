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
sudo pacman -S --noconfirm hyprland git waybar alacritty chromium rofi code nerd-fonts python-requests

# echo ""
# echo ""
# echo "*** Installing nerdfont ***"
# #Install nerd-fonts for icons
# sudo yay -S nerd-fonts


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
cp -r ./waybar/ ~/.config/
sleep 3
echo ""
cp -r ./hypr/ ~/.config/
echo ""
echo "*** All done ***"