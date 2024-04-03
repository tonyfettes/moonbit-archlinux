#!/usr/bin/env sh

set -xeuo

cp -r /github/workspace/* /build/
(cd /build && makepkg)
sudo cp /build/*.pkg.tar.zst /github/workspace
