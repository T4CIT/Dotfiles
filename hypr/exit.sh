#!/bin/bash

swww_daemon_socket="/run/user/1000/swww.socket"

sleep 0.1
if [ -e "$swww_daemon_socket" ]; then
    rm "$swww_daemon_socket"
fi
sleep 1
killall -9 Hyprland sleep 2
