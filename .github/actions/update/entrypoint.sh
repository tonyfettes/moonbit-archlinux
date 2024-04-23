#!/usr/bin/env sh

cp -r /github/workspace /build

(cd /build/workspace/ && {
  makepkg
  updpkgsums
  makepkg
  rm core.zip
  updpkgsums
  makepkg -f
  sudo cp PKGBUILD /github/workspace/
  makepkg --printsrcinfo > .SRCINFO
  sudo cp .SRCINFO /github/workspace/
})
