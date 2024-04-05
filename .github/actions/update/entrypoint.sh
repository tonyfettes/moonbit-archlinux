#!/usr/bin/env sh

cp /github/workspace/PKGBUILD /build/
cp /github/workspace/moon.sh  /build/
(cd /build && { makepkg; updpkgsums; })
sudo cp /build/PKGBUILD /github/workspace
