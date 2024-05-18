#!/bin/bash
grim -g "$(slurp)" /home/hoang/pictures/screenshots/$(date +'%s_screenshot.png') | wl-copy
