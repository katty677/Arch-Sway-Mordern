#!/usr/bin/env bash

set -e

PACKAGES=$(cat packages/*.conf | grep -v "^#")

sudo pacman -S --needed --noconfirm $PACKAGES