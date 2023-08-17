#!/bin/bash

pkill -f zentile_linux_amd64



~/.config/zentile_linux_amd64 &

sleep 0.2

xdotool key ctrl+shift+t &
