#!/bin/bash

#regolare la luminosità

trovaSchermo="$(xrandr | grep -w "connected" | awk '{print $1}')"
read -p "Inserisci la luminosità desiderata: " lum
xrandr --output $trovaSchermo --brightness $lum
