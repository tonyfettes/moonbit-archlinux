#!/usr/bin/env sh

cp -r /github/workspace/* /build/
(cd /build && { makepkg; updpkgsums; })
sudo cp /build/PKGBUILD      /github/workspace
