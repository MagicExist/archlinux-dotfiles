#!/bin/bash
RAMFILE="/dev/shm/cava_output.txt"

cava | while read -r line; do
    echo "$line" > "$RAMFILE"
done
