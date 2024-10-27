# arch-hyprland-ansible
A simple intallation of Hyprland with my Dotfiles into Arch Linux and automated by ansible.

My Dotfiles are here: https://github.com/raphaelbruno/dotfiles

## Disclaimer

This is for my personal use and it's working in progress, so files can be deleted, things can break, etc. If you want to try it, it`s for your own risk.

## Important

It is in progress, so please EXECUTE ONLY ONCE.

It`s needing of some check before to do changes in files of the system yet, so if you execute more then one time, the changes will be duplicated in files.

## What does this do?
- [x] Update
- [x] Copy dotfiles (custom dotfiles see envs)
- [x] Update
- [x] Codecs (audio, image and video)
- [x] Main file compressors (zip, unrar, p7zip...)
- [x] Multimedia core (mesa, vulkan, network, bluetooth, pipewire...)
- [x] Popular development packages (git, rust, python, nodejs...)
- [x] Zsh (set as default, oh-my-posh, oh-my-zsh, sintax-highlight, autosuggestion)
- [x] :radio_button: Amdgpu
- [x] :radio_button: Nvidia
- [x] Fonts (font-awesome, firacode-nerd)
- [x] Icon Theme (Papirus)
- [x] Terminal Applications (fastfetch, neovim, btop...)
- [x] :radio_button: Utilities Applications (nautilus, file-roller, snapshot, totem...)
- [x] :radio_button: Development Applications (spacevim, dbeaver, docker...)
- [x] :radio_button: Graphical Applications (gimp, inkscape)
- [x] :radio_button: Multimedia Applications (audacity, obs-studio, kdenlive)
- [x] :radio_button: 3D Applications (blender, freecad)
- [x] :radio_button: Browser (firefox|chromium|vivaldi|google-chrome)
- [x] :radio_button: Laptop battery optimization (autocpufreq)
- [x] :radio_button: AUR Support (yay)
- [x] Hyprland (kitty, waybar, rofi-wayland, swww, hyprlock, nwg-bar, grim, slurp...)
- [x] Dysplay Manager (greetd)

:radio_button: - Optional installation, see: [common/vars/main.yml](common/vars/main.yml)

## What you will need

- Any distribution based on Arch Linux, preferably a clean installation of Arch Linux with systemd-boot (grub not tested yet).
- Internet connection:
  - Ethernet
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

- Clone the repo with submodules 

  ```
  git clone --recurse-submodules --remote-submodules https://github.com/raphaelbruno/arch-hyprland-ansible.git
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
