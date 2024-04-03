#!/usr/bin/env sh

(cd /usr/share/moonbit/lib/core && moon bundle)
cp -r /usr/share/moonbit/lib/core /github/workspace
