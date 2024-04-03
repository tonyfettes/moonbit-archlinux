#!/usr/bin/env sh

set -xeuo

cp -r /github/workspace/* /build/
if (cd /build && makepkg) then
  echo "makepkg succeeded"
  (cd /build && updpkgsums)
else
  echo "makepkg failed, updating checksums..."
  (cd /build && updpkgsums)
  (cd /build && makepkg)
fi
sudo cp /build/*.pkg.tar.zst /github/workspace
sudo cp /build/PKGBUILD      /github/workspace
