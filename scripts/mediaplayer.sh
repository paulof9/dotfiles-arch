#!/bin/bash

# pega player ativo
player=$(playerctl --list-all 2>/dev/null | head -n1)

if [ -n "$player" ]; then
    status=$(playerctl -p "$player" status 2>/dev/null)
    if [ "$status" == "Playing" ]; then
        title=$(playerctl -p "$player" metadata title 2>/dev/null)
        artist=$(playerctl -p "$player" metadata artist 2>/dev/null)
        echo "{\"text\": \"$artist - $title\", \"tooltip\": \"$artist - $title\", \"class\": \"playing\"}"
    elif [ "$status" == "Paused" ]; then
        title=$(playerctl -p "$player" metadata title 2>/dev/null)
        artist=$(playerctl -p "$player" metadata artist 2>/dev/null)
        echo "{\"text\": \"⏸ $artist - $title\", \"tooltip\": \"$artist - $title\", \"class\": \"paused\"}"
    else
        echo "{\"text\": \"\", \"tooltip\": \"Nenhuma música\"}"
    fi
else
    echo "{\"text\": \"\", \"tooltip\": \"Nenhum player\"}"
fi
