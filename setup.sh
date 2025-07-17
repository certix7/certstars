#!/bin/bash

# Exit immediately if a command fails
set -e

echo "Running with sudo privileges..."
sudo -v

echo "Listing current directory contents:"
sudo ls

echo "Updating package list..."
sudo apt update

echo "Installing APT packages..."
sudo apt install -y \
    python3-pip \
    adb \
    aria2 \
    nautilus \
    nautilus-admin \
    zsh \
    git \
    p7zip-full \
    python3-wxgtk4.0 \
    grub2-common \
    grub-pc-bin \
    mousepad \
    gnome-software \
    lsd

echo "Upgrading pip..."
python3 -m pip install --upgrade pip

echo "Installing Python packages..."
pip install \
    colorama \
    prompt-toolkit \
    pygments \
    frida \
    frida-tools \
    objection

# Additional redundancy in case of versioning/capitalization issues
python3 -m pip install frida-tools
python3 -m pip install frida
pip install Frida
pip install frida-tools

echo "Installing WoeUSB-ng..."
sudo pip3 install WoeUSB-ng

echo "✅ Setup complete!"

