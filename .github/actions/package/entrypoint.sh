#!/usr/bin/env sh

cp -r /github/workspace/* /build/
makepkg
sudo cp ./*.pkg.tar.zst /github/workspace
