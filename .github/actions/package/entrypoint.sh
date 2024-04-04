#!/usr/bin/env sh

set -xeuo

cp -r /github/workspace/* /build/
(cd /build && makepkg -si --noconfirm)
(cd /build && moon new hello && cd hello && moon run main)
sudo cp /build/*.pkg.tar.zst /github/workspace
sudo cp /build/PKGBUILD      /github/workspace
