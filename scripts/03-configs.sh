#!/usr/bin/env bash

set -e


echo "[+] Installing Sway and system configs"


# Sway config

mkdir -p ~/.config/sway

cp -r configs/sway/* ~/.config/sway/


# User environment variables (environment.d)

mkdir -p ~/.config/environment.d

cp system/environment.d/sway.conf \
~/.config/environment.d/sway.conf


# greetd login manager (system-wide)

sudo mkdir -p /etc/greetd

sudo cp system/greetd/config.toml \
/etc/greetd/config.toml


echo "Configs installed"
