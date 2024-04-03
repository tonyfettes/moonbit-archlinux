FROM quay.io/archlinux/archlinux:base-devel AS base

RUN useradd -d /build -U -G wheel build && \
    pacman -Syu --noconfirm git pacman-contrib

USER build
WORKDIR /build

ADD --chown=build:build https://cli.moonbitlang.com/ubuntu_x86/moon     /build/moon
ADD --chown=build:build https://cli.moonbitlang.com/ubuntu_x86/moonc    /build/moonc
ADD --chown=build:build https://cli.moonbitlang.com/ubuntu_x86/moondoc  /build/moondoc
ADD --chown=build:build https://cli.moonbitlang.com/ubuntu_x86/moonfmt  /build/moonfmt
ADD --chown=build:build https://cli.moonbitlang.com/ubuntu_x86/moonrun  /build/moonrun
ADD --chown=build:build https://cli.moonbitlang.com/ubuntu_x86/mooninfo /build/mooninfo
COPY --chown=build:build PKGBUILD /build/PKGBUILD
COPY --chown=build:build core.zip /build/core.zip
COPY --chown=build:build moon.sh  /build/moon.sh
COPY --chown=build:build entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
