#!/usr/bin/env sh

makepkg
cp ./*.pkg.tar.zst /github/workspace
