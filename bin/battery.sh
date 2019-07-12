#!/bin/bash

batt_level () {
    current_charge=$(pmset -g ps | grep "$1" | grep -o '[0-9]\+%' | sed s/%//)
    [[ -z $current_charge ]] && return

    if [[ $current_charge -lt 30 ]]; then
        echo -n '#[fg=colour41]'
    elif [[ $current_charge -lt 50 ]]; then
        echo -n '#[fg=colour42]'
    elif [[ $current_charge -lt 70 ]]; then
        echo -n '#[fg=colour43]'
    elif [[ $current_charge -lt 90 ]]; then
        echo -n '#[fg=colour44]'
    else
        echo -n '#[fg=colour45]'
    fi

    echo -n "$2$current_charge% "
} 


BATTERY='🔋'
MOUSE='🖱'
KEYBOARD='🔠'

batt_level Internal $BATTERY
batt_level Mouse "$MOUSE "
batt_level "Bluetooth LE" "$MOUSE "
batt_level Keyboard $KEYBOARD
