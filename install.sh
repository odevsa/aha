#!/bin/bash

TMP_DIR=/tmp/arch-hyprland-ansible

packages=("git" "python" "ansible")

for package in "${packages[@]}"; do
    if ! pacman -Qi "$package" > /dev/null; then
        echo "Installing $package..."
        sudo pacman -S --noconfirm "$package"
    else
        echo "=> $package already installed."
    fi
done

git clone --recurse-submodules --remote-submodules https://github.com/raphaelbruno/arch-hyprland-ansible.git $TMP_DIR

(cd $TMP_DIR && ansible-playbook --ask-become-pass main.yml)