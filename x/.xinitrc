#!/bin/sh

hotplug
redshift -P -O 3000 &
feh --bg-fill ~/wallpapers/island.jpg
picom &
dunst &
xsetroot -cursor_name left_ptr
exec bspwm
