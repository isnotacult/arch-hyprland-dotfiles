#!/usr/bin/env bash

URL="https://chatgpt.com/?temporary-chat=true"
ZEN="/home/isnotacult/zen/zen"

"$ZEN" --new-tab "$URL" >/dev/null 2>&1 &

sleep 0.15

hyprctl dispatch focuswindow 'class:^zen$'