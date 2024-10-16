#!/bin/bash

TMP_DIR=/tmp/arch-hyprland-ansible

sudo pacman -S git python ansible

git clone --recurse-submodules --remote-submodules https://github.com/raphaelbruno/arch-hyprland-ansible.git $TMP_DIR

(cd $TMP_DIR && ansible-playbook --ask-become-pass main.yml)