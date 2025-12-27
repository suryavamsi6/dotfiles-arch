#!/usr/bin/env bash
# Converted from modules/home/dotfiles/hyprland/config/autostart.nix
# Make executable: chmod +x ~/.config/hypr/autostart.sh

# Xresources DPI
echo "Xft.dpi: 96" | xrdb -merge

# Set XWayland global output scale
xprop -root -f _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 1

# Start swaync (example user path - adjust username if needed)
swaync -c /home/surya/.config/swaync/config.json -s /home/surya/.config/swaync/style.css &

# Start walker tray/service
elephant &
walker --gapplication-service &

# Start polkit agent
# systemctl --user start hyprpolkitagent || true
