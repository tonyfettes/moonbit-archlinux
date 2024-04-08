#!/usr/bin/env sh

set -e

(cd /usr/share/moonbit/lib/core && /usr/lib/moon bundle)

(cd /root && /usr/lib/moon new test && cd test && sh /github/workspace/moon.sh check)

bsdtar -C /usr/share/moonbit/lib/ -a -cf /github/workspace/core.zip core

/usr/lib/moon version | grep 'moon ' | sed -E 's/moon ([0-9.]+) \((\w+) ([0-9]{4})-([0-9]{2})-([0-9]{2})\)/\1.\3\4\5/g' > /github/workspace/version
