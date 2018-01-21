#!/bin/bash

if [ -t 1 ]; then
    echo "Don't output to tty"
    exit 1
fi

# Numbers chosen for my particular screen layout, window decorations, etc.

pngtopnm "$1" \
    | pnmcut -left 6 -top 138 -width 480 -height 360 \
    | pnmscale -w 240 \
    | pnmtopng
