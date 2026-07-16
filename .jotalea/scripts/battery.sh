#!/bin/sh

for b in /sys/class/power_supply/bat*; do
    [ -d "$b" ] && bat="$b" && break
done

[ -z "$bat" ] && exit 1

n20=0
n10=0
n5=0
n1=0
n90=0
n100=0

while true; do
    c=$(cat "$bat/capacity")
    s=$(cat "$bat/status")

    if [ "$s" = "Discharging" ]; then
        n90=0
        n100=0

        if [ "$c" -le 1 ] && [ "$n1" -eq 0 ]; then
            notify-send -u critical "PLEASEEE" "im dying senpai, plug it in..."
            n1=1
            n5=1
            n10=1
            n20=1
        elif [ "$c" -le 5 ] && [ "$n5" -eq 0 ]; then
            notify-send -u critical "battery critical" "5% remaining. plug in immediately."
            n5=1
            n10=1
            n20=1
        elif [ "$c" -le 10 ] && [ "$n10" -eq 0 ]; then
            notify-send -u critical "battery low" "10% remaining. plug in soon."
            n10=1
            n20=1
        elif [ "$c" -le 20 ] && [ "$n20" -eq 0 ]; then
            notify-send -u normal "battery warning" "20% remaining."
            n20=1
        fi
    else
        n20=0
        n10=0
        n5=0
        n1=0

        if [ "$c" -ge 100 ] && [ "$n100" -eq 0 ]; then
            notify-send -u normal "battery full" "100% charged. you can unplug."
            n100=1
            n90=1
        elif [ "$c" -ge 90 ] && [ "$n90" -eq 0 ]; then
            notify-send -u normal "battery optimal" "90% charged. consider unplugging."
            n90=1
        fi
    fi

    sleep 60
done
