#!/bin/bash
xrandr --newmode "1920x1080_60.00"  172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
xrandr --addmode  DP-1 "1920x1080_60.00"
xrandr --output DP-1 --mode "1920x1080_60.00" --scale 1x1 --panning 1920x1080 --left-of HDMI-1
