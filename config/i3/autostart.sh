#!/bin/bash

apps=(
	"alacritty"
    "nmo"
)

workspaces=(
    "1"
	"5"
)

owNB=0

for iwin in ${!apps[*]}
do
    while [ "$owNB" -lt "$iwin" ]
    do
        owNB=$(wmctrl -l | wc -l)
    done
    sleep 0.1

    i3-msg workspace ${workspaces[$iwin]}
    ${apps[$iwin]} &!
done

sleep 1


i3-msg "workspace 1, move workspace to output DVI-D-1"
i3-msg "workspace 3, move workspace to output DP-1"
i3-msg "workspace 5, move workspace to output HDMI-1"

birdtray &
xbindkeys &
owncloud &
(nitrogen --restore; sleep 1; compton -b) &
nm-applet &
# (xautolock -detectsleep -time 15 -locker "i3exit lock") &
