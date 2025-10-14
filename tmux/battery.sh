#!/bin/bash

battery="$(cat /sys/class/power_supply/BAT0/capacity)"
battery_status="$(cat /sys/class/power_supply/BAT0/status)"

if [[ "$battery_status" == "Discharging" ]]; then
    case "$battery" in
        [0-9]|1[0-9])
            icon="󱃍";;
        2[0-9]|3[0-9])
            icon="󱊡";;
        4[0-9]|5[0-9])
            icon="󱊢";;
        6[0-9]|7[0-9]|8[0-9]|9[0-9]|100)
            icon="󱊣";;
        *)
            icon="󱉞";;
    esac
elif [[ "$battery_status" == "Charging" ]]; then
    case "$battery" in
        [0-9]|1[0-9])
            icon="󰢟";;
        2[0-9]|3[0-9])
            icon="󱊤";;
        4[0-9]|5[0-9])
            icon="󱊥";;
        6[0-9]|7[0-9]|8[0-9]|9[0-9]|100)
            icon="󱊦";;
        *)
            icon="󱉞";;
    esac
else
    icon="󱟩"
fi

if [[ "$battery" != "" ]]; then
    echo "$icon $battery%"
else
    echo "$icon ???"
fi
