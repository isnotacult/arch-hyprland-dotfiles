# Arch Hyprland Dotfiles

Personal Arch Linux + Hyprland desktop configuration.

This repository contains a full snapshot of my current Wayland desktop setup: Hyprland, Waybar, Rofi, Kitty, SwayNC, Walt wallpapers, OpenRGB lighting, custom scripts, package snapshots, and restore helpers.

---

## Overview

| Area | Tooling |
|---|---|
| OS | Arch Linux |
| Compositor | Hyprland |
| Bar | Waybar |
| Launcher | Rofi |
| Terminal | Kitty |
| Shell | Zsh |
| Wallpaper | Walt + Hyprpaper |
| Notifications | SwayNC |
| Audio | PipeWire / PulseAudio tools |
| RGB Lighting | OpenRGB |
| GPU | NVIDIA RTX 3080 |
| Main Display | DP-1, 1920x1080 @ 180Hz |
| Secondary Display | HDMI-A-1, 1920x1080 @ 100Hz |

---

## Repository Structure

```text
arch-hyprland-dotfiles/
├── home/
│   ├── .config/
│   │   ├── hypr/
│   │   ├── waybar/
│   │   ├── rofi/
│   │   ├── kitty/
│   │   ├── swaync/
│   │   ├── fastfetch/
│   │   ├── OpenRGB/
│   │   └── starship.toml
│   ├── .local/
│   │   └── bin/
│   └── .zshrc
├── system/
│   ├── pacman-explicit.txt
│   ├── pacman-all.txt
│   ├── services.txt
│   ├── hardware.txt
│   └── hyprland-version.txt
├── install.sh
├── restore.sh
└── README.md
```

---

## Core Packages

The complete package snapshot is stored in:

```text
system/pacman-explicit.txt
system/pacman-all.txt
```

### Desktop / Wayland

| Package | Purpose |
|---|---|
| `hyprland` | Wayland compositor |
| `waybar` | Status bar |
| `rofi` | App launcher |
| `kitty` | Terminal emulator |
| `hyprpaper` | Wallpaper backend |
| `walt-bin` | Wallpaper selector / manager |
| `hyprlock` | Lock screen |
| `hypridle` | Idle management |
| `swaync` | Notification center |
| `xdg-desktop-portal-hyprland` | Hyprland portal integration |

### NVIDIA / Monitoring

| Package | Purpose |
|---|---|
| `nvidia-open` | NVIDIA open kernel driver |
| `nvidia-utils` | NVIDIA userspace tools |
| `linux-headers` | Kernel headers |
| `nvtop` | GPU process monitor |

### File Manager

| Package | Purpose |
|---|---|
| `thunar` | File manager |
| `gvfs` | Mounting, trash, external storage |
| `tumbler` | File thumbnails |
| `ffmpegthumbnailer` | Video thumbnails |
| `thunar-archive-plugin` | Archive actions in Thunar |
| `file-roller` | Archive manager |
| `xdg-user-dirs` | Standard user directories |

### Screenshot / Clipboard

| Package | Purpose |
|---|---|
| `grim` | Screenshot capture |
| `slurp` | Region selection |
| `wl-clipboard` | Wayland clipboard |

### Audio / Bluetooth / Network

| Package | Purpose |
|---|---|
| `pavucontrol` | Audio control GUI |
| `blueman` | Bluetooth manager |
| `network-manager-applet` | Network tray applet |

### Shell

| Package | Purpose |
|---|---|
| `zsh` | Main shell |
| `zoxide` | Smart directory jumping |
| `starship` | Shell prompt |
| `zsh-autosuggestions` | Zsh autosuggestions |
| `zsh-syntax-highlighting` | Zsh syntax highlighting |

### Fonts

| Package | Purpose |
|---|---|
| `noto-fonts` | General font support |
| `nerd-fonts` | Icons and terminal glyphs |
| `ttf-jetbrains-mono-nerd` | Main monospace font |

### RGB / Lighting

| Package | Purpose |
|---|---|
| `openrgb` | RGB lighting control for PC and keyboard |

---

## Hyprland

Hyprland is used as the main Wayland compositor.

Main config path:

```text
~/.config/hypr/
```

Important files:

| File | Purpose |
|---|---|
| `hyprland.conf` | Main Hyprland config |
| `conf/monitor.conf` | Monitor layout |
| `conf/workspaces.conf` | Workspace mapping |
| `conf/binds.conf` | Keybinds |
| `conf/windowrules.conf` | Window rules |
| `conf/autostart.conf` | Startup applications |
| `hyprpaper.conf` | Hyprpaper wallpaper backend |
| `hyprlock.conf` | Lock screen config |

---

## Keybinds

### Launcher

| Bind | Action |
|---|---|
| `SUPER + D` | Toggle Rofi app launcher |

Rofi is configured as a centered app launcher with icons, fuzzy search, and a clean desktop-style layout.

---

### Terminal / File Manager

| Bind | Action |
|---|---|
| `SUPER + ENTER` | Open terminal |
| `SUPER + E` | Open Thunar file manager |

---

### Screenshots

| Bind | Action |
|---|---|
| `SUPER + S` | Select screen region and copy screenshot to clipboard |

Screenshot stack:

```text
grim + slurp + wl-clipboard
```

---

### Window Focus

| Bind | Action |
|---|---|
| `ALT + TAB` | Focus current or previous window |

---

### Workspaces

| Bind | Action |
|---|---|
| `SUPER + 1` | Switch to workspace 1 |
| `SUPER + 2` | Switch to workspace 2 |
| `SUPER + 3` | Switch to workspace 3 |
| `SUPER + 4` | Switch to workspace 4 |
| `SUPER + 5` | Switch to workspace 5 |
| `SUPER + 6` | Switch to workspace 6 |
| `SUPER + 7` | Switch to workspace 7 |
| `SUPER + 8` | Switch to workspace 8 |
| `SUPER + 9` | Switch to workspace 9 |
| `SUPER + 0` | Switch to workspace 10 |

| Bind | Action |
|---|---|
| `SUPER + SHIFT + 1` | Move window to workspace 1 |
| `SUPER + SHIFT + 2` | Move window to workspace 2 |
| `SUPER + SHIFT + 3` | Move window to workspace 3 |
| `SUPER + SHIFT + 4` | Move window to workspace 4 |
| `SUPER + SHIFT + 5` | Move window to workspace 5 |
| `SUPER + SHIFT + 6` | Move window to workspace 6 |
| `SUPER + SHIFT + 7` | Move window to workspace 7 |
| `SUPER + SHIFT + 8` | Move window to workspace 8 |
| `SUPER + SHIFT + 9` | Move window to workspace 9 |
| `SUPER + SHIFT + 0` | Move window to workspace 10 |

| Bind | Action |
|---|---|
| `SUPER + mouse wheel down` | Next workspace |
| `SUPER + mouse wheel up` | Previous workspace |

---

### Audio

| Bind | Action |
|---|---|
| `XF86AudioRaiseVolume` | Volume +3% |
| `XF86AudioLowerVolume` | Volume -3% |
| `XF86AudioMute` | Toggle mute |

Audio volume is handled through:

```text
~/.local/bin/volume-control
```

Features:

| Feature | Status |
|---|---|
| Uses selected/default sink | yes |
| Volume step | 3% |
| Prevents broken high volume states | yes |
| Supports mute toggle | yes |

---

## Monitor Layout

Current monitor setup:

```text
HDMI-A-1  1920x1080@100  -1920x0
DP-1      1920x1080@180      0x0
```

Main monitor:

```text
DP-1
```

Workspace mapping:

| Workspace | Monitor |
|---|---|
| 1 | DP-1 |
| 2 | DP-1 |
| 3 | DP-1 |
| 4 | DP-1 |
| 5 | HDMI-A-1 |
| 6 | HDMI-A-1 |
| 7 | HDMI-A-1 |
| 8 | HDMI-A-1 |
| 9 | DP-1 |
| 10 | DP-1 |

---

## Waybar

Waybar uses a modular Athena-style configuration.

Main config path:

```text
~/.config/waybar/
```

Custom performance module:

```text
CPU usage + CPU temperature + GPU usage + GPU temperature + RAM usage
```

Example:

```text
 8% 45°C  󰢮 12% 51°C   5.8G
```

Implemented through:

```text
~/.local/bin/waybar-performance
```

Metric sources:

| Metric | Source |
|---|---|
| CPU usage | `top` |
| CPU temperature | `/sys/class/hwmon` |
| GPU usage | `nvidia-smi` |
| GPU temperature | `nvidia-smi` |
| RAM usage | `free` |

---

## Rofi

Rofi is used as the main app launcher.

Features:

| Feature | Status |
|---|---|
| App launcher mode | `drun` |
| Icons | enabled |
| Fuzzy matching | enabled |
| Centered layout | enabled |
| Toggle behavior | enabled |

Main bind:

```text
SUPER + D
```

---

## Kitty

Kitty is used as the main terminal emulator.

Config path:

```text
~/.config/kitty/
```

---

## Wallpapers

Wallpapers are managed through Walt CLI.

| Tool | Purpose |
|---|---|
| `walt-bin` | Wallpaper picker / manager |
| `hyprpaper` | Hyprland wallpaper backend |

The intended workflow:

```text
Walt CLI → Hyprpaper backend → Hyprland wallpaper
```

Walt is the main interface for selecting wallpapers.  
Hyprpaper is kept as the backend used by Hyprland.

Wallpaper-related custom helper scripts are intentionally not required in this setup.

Useful commands:

```bash
walt --help
```

Hyprpaper log:

```bash
cat /tmp/hyprpaper.log
```

---

## OpenRGB

OpenRGB is used for controlling PC and keyboard lighting.

| Tool | Purpose |
|---|---|
| `openrgb` | RGB control for motherboard, PC lighting, and keyboard |

Config path, if present:

```text
~/.config/OpenRGB/
```

Typical usage:

```bash
openrgb
```

---

## Notifications

Notifications are handled by SwayNC.

| Component | Purpose |
|---|---|
| `swaync` | Notification daemon and control center |
| `swaync-client` | Notification control client |
| `notification-sound` | Optional notification sound helper |

Notification sound helper:

```text
~/.local/bin/notification-sound
```

SwayNC config path:

```text
~/.config/swaync/
```

---

## Audio Output Selector

Clicking the audio module opens a Rofi-based audio output selector.

Script:

```text
~/.local/bin/audio-output
```

Stack:

```text
pactl + rofi
```

Features:

| Feature | Status |
|---|---|
| Lists available sinks | yes |
| Marks current sink | yes |
| Sets default sink | yes |
| Moves active audio streams | yes |

---

## Window Rules

### Spotify

Spotify is pinned to workspace 4.

```text
workspace 4
tile enabled
```

### Telegram

Telegram is pinned to workspace 4.

```text
workspace 4
tile enabled
```

---

## NVIDIA Notes

The RTX 3080 correctly drops to low idle state when no heavy browser rendering is active.

Observed normal idle:

```text
P8
~25–32W
210 MHz core
405 MHz memory
```

Higher usage was mostly caused by active browser rendering, especially heavy browser tabs.

Useful diagnostics:

```bash
nvidia-smi
nvtop
nvidia-smi pmon -s um -c 5
```

Detailed GPU state:

```bash
nvidia-smi --query-gpu=utilization.gpu,utilization.decoder,power.draw,pstate,clocks.gr,clocks.mem,temperature.gpu --format=csv
```

---

## Custom Scripts

Custom scripts are stored in:

```text
home/.local/bin/
```

Important scripts:

| Script | Purpose |
|---|---|
| `audio-output` | Rofi audio sink selector |
| `volume-control` | Volume up/down/mute logic |
| `waybar-performance` | CPU/GPU/RAM Waybar module |
| `notification-sound` | Notification sound helper |

---

## Restore

Restore dotfiles into the current user profile:

```bash
./restore.sh
```

This copies:

```text
home/.config/*  →  ~/.config/
home/.local/bin →  ~/.local/bin/
home/.zshrc     →  ~/.zshrc
```

Then reloads Hyprland if available.

---

## Install

Install packages from the explicit package snapshot and restore configs:

```bash
./install.sh
```

Package source:

```text
system/pacman-explicit.txt
```

---

## Update Snapshot

To refresh this repository from the live system:

```bash
rsync -a --delete ~/.config/hypr/ home/.config/hypr/
rsync -a --delete ~/.config/waybar/ home/.config/waybar/
rsync -a --delete ~/.config/rofi/ home/.config/rofi/
rsync -a --delete ~/.config/kitty/ home/.config/kitty/

[ -d ~/.config/swaync ] && rsync -a --delete ~/.config/swaync/ home/.config/swaync/
[ -d ~/.config/fastfetch ] && rsync -a --delete ~/.config/fastfetch/ home/.config/fastfetch/
[ -d ~/.config/OpenRGB ] && rsync -a --delete ~/.config/OpenRGB/ home/.config/OpenRGB/

[ -f ~/.config/starship.toml ] && cp ~/.config/starship.toml home/.config/starship.toml
[ -f ~/.zshrc ] && cp ~/.zshrc home/.zshrc

mkdir -p home/.local/bin
for f in audio-output volume-control waybar-performance notification-sound; do
  [ -f "$HOME/.local/bin/$f" ] && cp "$HOME/.local/bin/$f" "home/.local/bin/$f"
done

pacman -Qqe > system/pacman-explicit.txt
pacman -Qq > system/pacman-all.txt
systemctl list-unit-files --state=enabled > system/services.txt
```

Refresh system information:

```bash
{
  echo "Kernel:"
  uname -a

  echo
  echo "Hyprland:"
  Hyprland --version 2>/dev/null || hyprctl version

  echo
  echo "NVIDIA:"
  nvidia-smi 2>/dev/null || true

  echo
  echo "Waybar:"
  waybar --version 2>/dev/null || true

  echo
  echo "Rofi:"
  rofi -v 2>/dev/null || true

  echo
  echo "OpenRGB:"
  openrgb --version 2>/dev/null || true

  echo
  echo "Walt:"
  walt --version 2>/dev/null || walt --help | head -5
} > system/hyprland-version.txt

{
  echo "CPU/GPU/RAM:"
  lscpu | grep -E "Model name|CPU\\(s\\)|Thread|Core|Socket"

  echo
  lspci | grep -Ei "vga|3d|audio|network|ethernet"

  echo
  free -h

  echo
  lsblk -f
} > system/hardware.txt
```

Commit changes:

```bash
git add -A
git commit -m "Update Hyprland desktop configuration"
git pull --rebase origin main
git push
```

---

## Security Check

Before pushing, check for secrets:

```bash
grep -RniE "token|password|secret|private|github_pat|ghp_|OPENAI|API_KEY|Authorization" . --exclude-dir=.git
```

Expected false positives:

```text
tokens/
Input Password placeholder
libsecret package name
.gitignore rules
```

Do not commit real credentials, tokens, private keys, API keys, browser profiles, or cache directories.

---

## Notes

This is a personal desktop configuration.  
It is designed for my current Arch Linux + Hyprland setup and may require adaptation on other machines.

Use at your own risk.
