#!/bin/sh
# Note - my laptop I use, ThinkPad t440s, uses two batteries, so the critical value is considered to be
# the average less than 5.
PATH=/home/linet/bin:/home/linet/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin:/usr/lib/llvm/12/bin
export DISPLAY=:0.0


#Ignore if we are connected to AC
do_check=$(cat /sys/class/power_supply/AC/online)

if [ $do_check -eq 0 ]; then
	bat0=$(cat /sys/class/power_supply/BAT0/capacity)
	bat1=$(cat /sys/class/power_supply/BAT1/capacity)
	cap=$(( ( $bat0 + $bat1 ) / 2 ))
	[ $cap -lt 15  ] && notify-send --urgency=critical 'Battery Low'
fi
