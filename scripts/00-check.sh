#!/usr/bin/env bash

set -e


echo "[+] Pre-flight checks"


# Must not be root

if [ "$EUID" -eq 0 ]; then
    echo "Do not run this as root"
    exit 1
fi


# Must be Arch-based (pacman present)

if ! command -v pacman >/dev/null 2>&1; then
    echo "pacman not found - this installer targets Arch Linux"
    exit 1
fi


# Need sudo

if ! command -v sudo >/dev/null 2>&1; then
    echo "sudo is required"
    exit 1
fi


# Warn if not booted in UEFI (informational only)

if [ ! -d /sys/firmware/efi ]; then
    echo "[!] System does not appear to be booted in UEFI mode"
fi


echo "[+] Checks passed"
