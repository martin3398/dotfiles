#!/bin/bash

apps=(
    "nmo"
	"alacritty"
	"firefox"
	"spotify"
	"ferdi"
)

workspaces=(
	"5"
	"1"
    "3"
    "2"
    "2"
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

i3-msg "workspace 5, move workspace to output HDMI-1"
i3-msg "workspace 1, move workspace to output DVI-D-1"
i3-msg "workspace 4, move workspace to output DP-1"
i3-msg "workspace 2, move workspace to output DVI-D-1"
i3-msg "workspace 3, move workspace to output DP-1"

birdtray &
