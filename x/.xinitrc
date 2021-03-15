#!/bin/sh

hotplug
redshift -P -O 3000 &
dunst &
exec dwm
