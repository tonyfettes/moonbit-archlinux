#!/usr/bin/env sh

set -xeuo

git clone https://aur.archlinux.org/moonbit-bin.git /build/moonbit-bin
(cd /build/moonbit-bin && makepkg -si --noconfirm)
(cd /build && moon new hello && cd hello && moon run main)
