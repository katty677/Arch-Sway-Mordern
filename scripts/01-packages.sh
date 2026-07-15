#!/usr/bin/env bash

set -e


# Read every package list, strip comments, blank lines, and any stray
# carriage returns / whitespace so no malformed package names reach pacman.
# grep -h reads each file separately, so missing trailing newlines never
# merge the last entry of one file into the first of the next.

PACKAGES=$(grep -hv '^#' packages/*.conf | tr -d '\r' | tr -s '[:space:]' '\n' | grep -v '^$')


sudo pacman -S --needed --noconfirm $PACKAGES
