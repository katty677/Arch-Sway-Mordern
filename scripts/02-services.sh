#!/usr/bin/env bash

set -e


echo "[+] Enabling system services"


# Network

sudo systemctl enable NetworkManager


# Login manager

sudo systemctl enable greetd


# Bluetooth

sudo systemctl enable bluetooth


# Power profiles

sudo systemctl enable power-profiles-daemon


echo "[+] Enabling user services"


# Audio (PipeWire)

systemctl --user enable pipewire.service
systemctl --user enable pipewire-pulse.service
systemctl --user enable wireplumber.service


echo "Services enabled"
