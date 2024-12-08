#!/bin/bash

# Hyprland Setup Script for Arch Linux

# Exit on error
set -e

# Update system packages
sudo pacman -Syu --noconfirm

# Install Hyprland and related window management packages
sudo pacman -S --noconfirm \
  hyprland \
  hyprpaper \
  hypridle \
  hyprlock \
  waybar \
  tofi \
  dunst \
  wl-clipboard \
  cliphist

# Terminal and File Management
sudo pacman -S --noconfirm \
  kitty \
  nautilus

# Web and Productivity
sudo pacman -S --noconfirm \
  firefox

# System Utilities
sudo pacman -S --noconfirm \
  polkit-kde-agent \
  brightnessctl \
  pamixer \
  playerctl \
  nm-applet \
  blueman

# Input Methods
sudo pacman -S --noconfirm \
  fcitx5 \
  fcitx5-qt

# Theming and Appearance
sudo pacman -S --noconfirm \
  qt6ct \
  kvantum \
  nwg-look

# Screenshot Tools
sudo pacman -S --noconfirm \
  hyprshot

# Additional Recommended Utilities
sudo pacman -S --noconfirm \
  wlogout \
  grimblast

# AUR Helper (optional, requires yay to be installed)
# Uncomment and modify as needed for AUR packages
# yay -S hyprpicker

mkdir -p ~/.config/hypr/
mkdir -p ~/.config/wlogout/
mkdir -p ~/.config/waybar/
mkdir -p ~/.config/tofi/

cp -r ./.config/ ~/.config/

echo "Hyprland setup complete! Please reboot or log out and log back in."
