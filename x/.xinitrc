#!/bin/sh

hotplug
slstatus &
redshift -P -O 3000 &
exec dwm
