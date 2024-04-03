FROM quay.io/archlinux/archlinux:base-devel AS base

ADD https://cli.moonbitlang.com/ubuntu_x86/moon     /usr/lib/moon
COPY ./moon.sh /usr/bin/moon
ADD https://cli.moonbitlang.com/ubuntu_x86/moonc    /usr/bin/moonc
ADD https://cli.moonbitlang.com/ubuntu_x86/moonfmt  /usr/bin/moonfmt
ADD https://cli.moonbitlang.com/ubuntu_x86/moonrun  /usr/bin/moonrun
ADD https://cli.moonbitlang.com/ubuntu_x86/moondoc  /usr/bin/moondoc
ADD https://cli.moonbitlang.com/ubuntu_x86/mooninfo /usr/bin/mooninfo
ADD https://cli.moonbitlang.com/core.zip            /usr/share/moonbit/lib/core.zip
RUN chmod +x /usr/lib/moon /usr/bin/moon /usr/bin/moonc /usr/bin/moonfmt /usr/bin/moonrun /usr/bin/moondoc /usr/bin/mooninfo && \
    bsdtar -C /usr/share/moonbit/lib/ -x -f /usr/share/moonbit/lib/core.zip && \
    (cd /usr/share/moonbit/lib/core && moon bundle)
