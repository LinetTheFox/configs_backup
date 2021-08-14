#!/bin/sh
# Note - my laptop I use, ThinkPad t440s, uses two batteries, so the critical value is considered to be
# the average less than 5.

# Ignore if we are connected to AC
do_check=$(cat /sys/class/power_supply/AC/online)

if [ $do_check ]; then
	bat0=$(cat /sys/class/power_supply/BAT0/capacity)
	bat1=$(cat /sys/class/power_supply/BAT1/capacity)
	cap=$(( ( $bat0 + $bat1 ) / 2 ))
	[ $cap -lt 10  ] && notify-send --urgency=critical 'Battery Low'
fi
