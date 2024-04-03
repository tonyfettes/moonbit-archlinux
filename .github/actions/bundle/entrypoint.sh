#!/usr/bin/env sh

set -e

(cd /usr/share/moonbit/lib/core && /usr/lib/moon bundle)

(cd /root && /usr/lib/moon new test && cd test && sh /github/workspace/moon.sh check)

bsdtar -C /usr/share/moonbit/lib/ -a -cf /github/workspace/core.zip core
