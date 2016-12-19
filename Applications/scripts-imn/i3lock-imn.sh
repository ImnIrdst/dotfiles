#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -blur 0x6 /tmp/screen.png

LOCK_ICON=/home/iman/Applications/scripts-imn/resources/lock-icon.png
convert /tmp/screen.png / $LOCK_ICON -gravity center -composite -matte /tmp/screen.png

i3lock -i /tmp/screen.png

rm /tmp/screen.png
