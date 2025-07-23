#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config=$HOME/.local/share/polybar/themes/nimbledesktop/config.ini barleft &
polybar --config=$HOME/.local/share/polybar/themes/nimbledesktop/config.ini barmiddle &
polybar --config=$HOME/.local/share/polybar/themes/nimbledesktop/config.ini barright &

