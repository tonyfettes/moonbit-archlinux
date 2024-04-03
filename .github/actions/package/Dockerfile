FROM quay.io/archlinux/archlinux:base-devel AS base

RUN useradd -d /build -U build

USER build
WORKDIR /build

COPY PKGBUILD /build/PKGBUILD
COPY core.zip /build/core.zip
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
