#!/usr/bin/env bash


mkdir -p ~/.config


cp -r configs/waybar ~/.config/

cp -r configs/wofi ~/.config/

cp -r configs/foot ~/.config/

cp -r configs/mako ~/.config/

mkdir -p ~/.config/gtk-3.0

cp configs/gtk/settings.ini \
~/.config/gtk-3.0/settings.ini



echo "Theme installed"