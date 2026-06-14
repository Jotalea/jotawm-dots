#!/bin/bash

WALLPAPER_DIR="$HOME/.jotalea/assets/"
CACHE_DIR="$HOME/.cache/rofi-wallpapers"
if [ -n "$1" ]; then
    mkdir -p "$CACHE_DIR"
    feh --bg-fill "$WALLPAPER_DIR/$1"
    cp "$WALLPAPER_DIR/$1" "$CACHE_DIR/image.png"
    exit 0
fi
find "$WALLPAPER_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.webp" \) -exec basename {} \;
