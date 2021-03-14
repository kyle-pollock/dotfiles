#!/bin/sh

hotplug
redshift -P -O 3000 &
dunst &
xsetroot -cursor_name left_ptr
exec bspwm
