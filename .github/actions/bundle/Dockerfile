FROM quay.io/archlinux/archlinux:base-devel AS base

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]

ADD https://cli.moonbitlang.com/ubuntu_x86/moon     /usr/bin/moon
ADD https://cli.moonbitlang.com/ubuntu_x86/moonc    /usr/bin/moonc
ADD https://cli.moonbitlang.com/core.zip            /usr/share/moonbit/lib/core.zip
RUN chmod +x /usr/bin/moon /usr/bin/moonc && \
    bsdtar -C /usr/share/moonbit/lib/ -x -f /usr/share/moonbit/lib/core.zip
