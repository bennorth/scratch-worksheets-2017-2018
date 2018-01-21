#!/bin/bash

if [ -t 1 ]; then
    echo "Don't output to tty"
    exit 1
fi

gs -q -sDEVICE=png16m -r300 -sOutputFile=/dev/stdout -dLastPage=1 -dBATCH -dNOPAUSE "$1" \
    | pngtopnm \
    | pnmscale -w 210 \
    | ppmbrighten -v -7.5 \
    | pnmtopng
