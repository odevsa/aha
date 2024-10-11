# arch-hyprland-ansible

- ArchLinux fresh install
- Check internet connection

## Disclaimer
This is for my personal use, if you want to try it, it`s for your own risk.

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
## Important

It is in progress, so please EXECUTE ONLY ONCE.

It`s needing of some check before to do changes in files of the system yet, so if you execute more then one time, the changes will be duplicated in files. 