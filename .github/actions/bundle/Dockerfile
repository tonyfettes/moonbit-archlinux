FROM quay.io/archlinux/archlinux:base-devel AS base

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

WORKDIR /github/workspace

ADD https://cli.moonbitlang.com/ubuntu_x86/moon     /usr/lib/moon
ADD https://cli.moonbitlang.com/ubuntu_x86/moonc    /usr/bin/moonc
ADD https://cli.moonbitlang.com/core.zip            /usr/share/moonbit/lib/core.zip
RUN chmod +x /usr/lib/moon /usr/bin/moonc && \
    bsdtar -C /usr/share/moonbit/lib/ -xf /usr/share/moonbit/lib/core.zip
