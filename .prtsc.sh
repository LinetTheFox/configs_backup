#!/bin/sh

scr_path="/home/linet/.screen.png"

scrot -s -l style=solid,width=1,color="cyan" -f $scr_path
xclip -selection clipboard -t image/png -i $scr_path
test -e $scr_path && rm $scr_path

