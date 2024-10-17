# arch-hyprland-ansible
A simple intallation of Hyprland with my Dotfiles into Arch Linux and automated by ansible.

My Dotfiles are here: https://github.com/raphaelbruno/dotfiles

## Disclaimer

This is for my personal use, if you want to try it, it`s for your own risk.

## What you will need

- Any distribution based on Arch Linux, preferably a clean installation of Arch Linux.
- Internet connection:
  - Wifi with `iwctl`
    ```
    $ iwctl

    [iwctl]# station <DEVICE> connect "<SSID>"
    ```
  - Wifi with `NetworkManager`
    ```
    $ nmcli device wifi connect "<SSID>" --ask
    ```

## Before Install

Maybe this has more applications then you need, so you may want to do the `Manual Install` and modify the [common/vars/main.yml](common/vars/main.yml) file before `Run ansible`


## Automatic Install

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/raphaelbruno/arch-hyprland-ansible/main/install.sh)"
```

## Manual Install

- Install necessary dependencies

  ```
  sudo pacman -S git python ansible
  ```

- Clone the repo

  ```
  git clone https://github.com/raphaelbruno/arch-hyprland-ansible.git
  ```

- Enter in folder

  ```
  cd arch-hyprland-ansible
  ```

- Run ansible
  ```
  ansible-playbook --ask-become-pass main.yml
  ```
- Input sudo password when it ask for

## Important

It is in progress, so please EXECUTE ONLY ONCE.

It`s needing of some check before to do changes in files of the system yet, so if you execute more then one time, the changes will be duplicated in files.
