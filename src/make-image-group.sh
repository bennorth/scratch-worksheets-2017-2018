#!/bin/bash

white-pad() {
    pngtopnm "$1" \
        | pnmpad -white -left 12 -right 12 -top 12 -bottom 12 \
                 > "$2"
}

white-pad ../docs/week-07/scratch-project.png /tmp/00.ppm
white-pad ../docs/week-10/scratch-project.png /tmp/01.ppm
white-pad ../docs/week-11/scratch-project.png /tmp/10.ppm
white-pad ../docs/week-12/scratch-project.png /tmp/11.ppm

for r in 0 1; do pnmcat -leftright /tmp/${r}{0,1}.ppm > /tmp/$r.ppm; done

pnmcat -topbottom /tmp/{0,1}.ppm \
    | pnmtopng \
          > project-screenshots.png
