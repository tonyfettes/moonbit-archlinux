#!/usr/bin/env sh

set -e

(cd /usr/share/moonbit/lib/core && moon bundle)
(cd /root && moon new test && cd test && moon check)
bsdtar -C /usr/share/moonbit/lib/ -a -cf /github/workspace/core.zip core
