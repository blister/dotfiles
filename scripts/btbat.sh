#!/usr/bin/env bash
# Grab current bluetooth battery level (or get last one)

LOW_RED='ms=01;31:mc=01;42:sl=:cx=:fn=35:ln=32:bn=32:se=36' # red
MID_YELLOW='ms=01;33:mc=01;42:sl=:cx=:fn=35:ln=32:bn=32:se=36' # yellow
GOOD_GREEN='ms=01;32:mc=01;42:sl=:cx=:fn=35:ln=32:bn=32:se=36' # good green

CUR_GREP_COLORS=$GREP_COLORS

BATTERY=$(($(journalctl -b --user-unit pulseaudio -g "Battery Level" -o cat | tail -n1 | grep "[[:digit:]]*%" --color=auto -o | tr "%" ' ') ))

if ((BATTERY >= 0 && BATTERY <= 20)); then
	export GREP_COLORS=$LOW_RED
elif ((BATTERY > 20 && BATTERY <= 60)); then
	export GREP_COLORS=$MID_YELLOW
elif (( BATTERY > 60 )); then 
	export GREP_COLORS=$GOOD_GREEN
fi

journalctl -b --user-unit pulseaudio -g "Battery Level" -o cat | tail -n1 | grep "[[:digit:]]*%" --color=auto

export GREP_COLORS=$CUR_GREP_COLORS
