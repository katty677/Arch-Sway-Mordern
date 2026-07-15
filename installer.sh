#!/usr/bin/env bash

set -e

GREEN="\033[0;32m"
RESET="\033[0m"

echo -e "${GREEN}"
echo "================================="
echo " Arch Sway Modern Installer"
echo "================================="
echo -e "${RESET}"


if [ "$EUID" -eq 0 ]; then
    echo "Do not run this as root"
    exit 1
fi


echo "[+] Updating system"

sudo pacman -Syu --noconfirm


echo "[+] Running checks"

bash scripts/00-check.sh


echo "[+] Installing packages"

bash scripts/01-packages.sh


echo "[+] Enabling services"

bash scripts/02-services.sh


echo "[+] Installing configs"

bash scripts/03-configs.sh


echo "[+] Applying theme"

bash scripts/04-theme.sh


echo "[+] Configuring shell"

bash scripts/05-shell.sh


echo "[+] Cleanup"

bash scripts/06-cleanup.sh


echo
echo "================================="
echo " Installation Complete"
echo " Reboot and start Sway"
echo "================================="