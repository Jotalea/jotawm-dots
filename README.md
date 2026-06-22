# jotawm-dots
dotfiles i use alongside my window manager

recommended packages:

```
paru -S catppuccin-cursors-mocha ttf-jetbrains-mono-nerd picom-simpleanims-git --needed # AUR packages
paru -S xclip polybar feh base-devel git kitty dolphin firefox brightnessctl\
  xorg-server xorg-xinit libxtst libx11 maim pulseaudio-utils ly xorg-xrandr --needed # native packages
```

themes (Catppuccin Mocha Blue across all toolkits):

```
paru -S catppuccin-gtk-theme-mocha kvantum-theme-catppuccin-git qt5ct qt6ct --needed
```

config files in `home/` mirror the home directory layout. Copy them:

```sh
cp -r home/. ~/
```

- GTK 2/3/4: `catppuccin-mocha-blue-standard+default`
- Qt5/Qt6 (via qt5ct/qt6ct): `kvantum-dark` style
- Kvantum: `catppuccin-mocha-blue`

> Note: `qt5ct.conf` and `qt6ct.conf` use `~/.config/qt{5,6}ct/style-colors.conf` for the color scheme path.

showcase: https://www.youtube.com/watch?v=1O3XxlL_rVc
