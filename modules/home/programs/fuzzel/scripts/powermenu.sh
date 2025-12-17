#!/usr/bin/env bash

# Power menu options
options="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n Lock\n󰗽 Logout"

# Show menu and capture selection
chosen=$(echo -e "$options" | fuzzel --dmenu --prompt="Power: ")

# Execute based on selection
case "$chosen" in
    "󰐥 Shutdown")
        systemctl poweroff
        ;;
    "󰜉 Reboot")
        systemctl reboot
        ;;
    "󰤄 Suspend")
        systemctl suspend
        ;;
    " Lock")
        hyprlock
        ;;
    "󰗽 Logout")
        niri msg action quit
        ;;
esac
