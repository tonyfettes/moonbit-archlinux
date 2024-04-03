FROM quay.io/archlinux/archlinux:base-devel AS base

RUN useradd -d /build -U -G wheel build && \
    pacman -Syu --noconfirm git

USER build
WORKDIR /github/workspace

COPY --chown=build:build entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
