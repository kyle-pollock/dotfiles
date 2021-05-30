#!/bin/sh

hotplug
redshift -l 49.8844:-97.14704 &
dunst &
slstatus &
exec dwm
