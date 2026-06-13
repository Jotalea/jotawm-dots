#!/bin/bash
# Save this as $HOME/.config/rofi/wallpicker.sh and make it executable

WALLPAPER_DIR="$HOME/.jotalea/assets/"
CACHE_DIR="$HOME/.cache/rofi-wallpapers"

# If an argument is passed, it means the user selected a file
if [ -n "$1" ]; then
    mkdir -p "$CACHE_DIR"
    feh --bg-fill "$WALLPAPER_DIR/$1"
    cp "$WALLPAPER_DIR/$1" "$CACHE_DIR/image.png"
    exit 0
fi

# Otherwise, just list the files for Rofi to display
find "$WALLPAPER_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.webp" \) -exec basename {} \;
