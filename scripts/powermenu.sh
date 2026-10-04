#!/usr/bin/env bash

choice=$(printf "Lock\nSuspend\nLogout\nReboot\nShutdown" | \
    wofi --dmenu --prompt "Power")

case "$choice" in
    "Lock")
        swaylock
        ;;
    "Suspend")
        systemctl suspend
        ;;
    "Logout")
        swaymsg exit
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
esac
