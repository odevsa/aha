# arch-hyprland-ansible

- ArchLinux fresh install
- Check internet connection

## Install necessary dependencies

```
sudo pacman -S git python ansible
```

## Run
```
git clone https://github.com/raphaelbruno/arch-hyprland-ansible.git

cd arch-hyprland-ansible

ansible-playbook --ask-become-pass main.yml
```
