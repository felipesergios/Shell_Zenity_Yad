#!/usr/bin/env bash
echo "Welcome to network testing"

site=$(zenity --forms --title="IP" --text="Please informate address " --add-entry="Insert IP or DNS")

if zenity --question --title="Confirm test" --text="Are you sure you want to start test now ?" --no-wrap
    then
    ping=$(ping -c 2 "$site")
    zenity --info --title="Success" --text="$ping" --no-wrap
fi
zenity --notification --text "Finish Program"