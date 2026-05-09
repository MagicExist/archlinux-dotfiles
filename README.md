<div align="center">

# Arch Linux Dotfiles

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-00A8CC?style=for-the-badge&logo=wayland&logoColor=white)
![HyDE](https://img.shields.io/badge/HyDE-6E3CBC?style=for-the-badge&logo=linux&logoColor=white)
![Zsh](https://img.shields.io/badge/Zsh-F15A24?style=for-the-badge&logo=zsh&logoColor=white)

Personal configuration files for **Arch Linux** + **Hyprland** + **HyDE**.

![main screen demo](assets/main-screen-demo.gif)

![hyprlock demo](assets/hyprlock-demo.gif)

</div>

---

## Setup

| Component | Tool |
|-----------|------|
| OS | Arch Linux |
| WM | Hyprland |
| Framework | HyDE |
| Screen locker | Hyprlock |
| Visualizer | Cava |
| Shell | Zsh |

---

## What's included

- **Hyprlock** — lock screen layout with profile photo, clock, and music widget
- **Cava equalizer** — animated audio visualizer above and below the song title
- **Scripts** — `eq.sh`, `eq_inverted.sh`, `nowplaying.sh`, `cava_to_file.sh`
- **Cava config** — tuned with monstercat smoothing for a wave-like look
- **userprefs** — Hyprland user preferences including autostart for cava

---

## Install

### Dependencies

```bash
sudo pacman -S hyprland hyprlock cava stow playerctl
```

### Clone and apply

```bash
git clone https://github.com/MagicExist/archlinux-dotfiles ~/dotfiles
cd ~/dotfiles
stow --no-folding .
```

> Make sure **HyDE** is already installed before applying these dotfiles.
> Check [HyDE](https://github.com/HyDE-Project/HyDE) for installation instructions.

---

## Music widget

The lock screen shows a live audio equalizer using [cava](https://github.com/karlstav/cava) and [playerctl](https://github.com/altdesktop/playerctl). It only activates when music is playing. Cava runs in the background on login via `exec-once` in `userprefs.conf`.
