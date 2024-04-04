FROM quay.io/archlinux/archlinux:base-devel AS base

RUN useradd -d /build -U -G wheel build && \
    pacman -Syu --noconfirm git pacman-contrib sudo && \
    echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER build
WORKDIR /build

COPY --chown=build:build entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
