#!/bin/bash

RAMFILE="/dev/shm/cava_output.txt"

line=$(cat $RAMFILE 2>/dev/null)

if [[ "$(playerctl status 2>/dev/null)" != "Playing" ]]; then
    echo ""
    exit 0
fi

if [[ -z "$line" ]]; then
    echo ""
    exit 0
fi

bars=()

for value in ${line//;/ }; do
    height=$value
    if (( height > 8 )); then height=8; fi

    case $height in
        0) bars+=("⠀") ;;
        1) bars+=("⠉") ;;
        2) bars+=("⠋") ;;
        3) bars+=("⠛") ;;
        4) bars+=("⠟") ;;
        5) bars+=("⠿") ;;
        6) bars+=("⡿") ;;
        7) bars+=("⣿") ;;
        8) bars+=("⣿") ;;
    esac
done

echo "${bars[*]}"
