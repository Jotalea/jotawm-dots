#!/bin/bash

killall -q polybar picom
while pgrep -u $USER -x polybar >/dev/null; do sleep 1; done

feh --bg-fill ~/.jotalea/wallpapers/flowering-rain.png &
picom --config ~/.config/picom/picom.conf &
polybar -config ~/.config/polybar/config.ini &
