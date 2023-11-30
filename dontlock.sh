#!/usr/bin/env bash
DELAY=5
CURRENT_DATE=$(date | cut -d ' ' -f 5-6 | cut -c 1-5,10-11)

while [ "$CURRENT_DATE" != "08:30PM" ]; do
	for ANGLE in 0 90 180 270
	do
		LD_PRELOAD=~/xdotool/libxdo.so ~/xdotool/xdotool mousemove_relative --polar $ANGLE 400
		sleep $DELAY
	done
	CURRENT_DATE=$(date | cut -d ' ' -f 5-6 | cut -c 1-5,10-11)
done
