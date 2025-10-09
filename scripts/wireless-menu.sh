#!/bin/sh

export DIALOGRC="$HOME/.config/dialog/dialogrc"
export TERM=xterm-256color
unset COLORTERM

while true; do
    CHOICE=$(dialog --clear --stdout \
        --title "Control Center" \
        --menu "Select an option:" 10 50 3 \
        1 "Network Manager (nmtui)" \
        2 "Bluetooth Control (bluetuith)" \
        3 "Exit")

    case "$CHOICE" in
        1)
            nmtui
            ;;
        2)
            bluetuith
            ;;
        3)
            clear
            exit 0
            ;;
    esac
done
