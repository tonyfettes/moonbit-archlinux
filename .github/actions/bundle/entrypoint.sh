#!/usr/bin/env sh

(cd /usr/share/moonbit/lib/core && moon bundle)
bsdtar -C /usr/share/moonbit/lib/ -a -cf /github/workspace/core.zip core
