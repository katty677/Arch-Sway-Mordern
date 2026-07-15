#!/usr/bin/env bash

set -e


echo "[+] Cleaning up"


# Remove orphaned packages, if any

ORPHANS=$(pacman -Qtdq || true)

if [ -n "$ORPHANS" ]; then
    echo "$ORPHANS" | sudo pacman -Rns --noconfirm -
else
    echo "No orphaned packages"
fi


# Clear pacman cache (keep latest versions)

sudo paccache -r 2>/dev/null || true


echo "Cleanup complete"
