#!/usr/bin/env bash

function capslock() {

    caps=$(xset -q | grep Caps | awk '{ print $4 }')

    if [ $caps == 'off' ]; then
        echo "%{F#499afc} %{F}"
    else
        echo "%{F#FF0000} %{F}"
    fi
}

capslock
