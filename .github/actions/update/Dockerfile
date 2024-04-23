FROM quay.io/archlinux/archlinux:base-devel AS base

RUN useradd -d /build -U -G wheel build && \
  pacman -Syu --noconfirm git pacman-contrib sudo unzip && \
  pacman -Rnsu debugedit && \
  echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER build
WORKDIR /build
