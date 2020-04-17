#!/bin/env sh

pkill polybar

sleep 1;

for monitor in $(polybar -m|sed -e 's/:.*$//g'); do
    MONITOR=$monitor polybar i3wmthemer_bar &
done
