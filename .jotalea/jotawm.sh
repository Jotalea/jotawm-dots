#!/bin/bash

killall -q polybar picom
while pgrep -u $USER -x polybar >/dev/null; do sleep 1; done

feh --bg-fill ~/.jotalea/assets/flowering-rain.png &
picom --config ~/.config/picom/picom.conf &
polybar -config ~/.config/polybar/config.ini &

if command -v flatpak &> /dev/null; then
    flatpak override --user \
        --filesystem=/usr/share/themes:ro \
        --filesystem="$HOME/.config/Kvantum:ro" \
        --filesystem="$HOME/.config/gtk-3.0:ro" \
        --filesystem="$HOME/.config/gtk-4.0:ro" \
        --env=GTK_THEME="catppuccin-mocha-blue-standard+default" \
        --env=QT_STYLE_OVERRIDE="kvantum"
fi
