# Arch Linux (AUR) Distribution of MoonBit

> [!WARNING]
> This repository is **UNOFFICIAL**

## How to use

You can:

1. download `*.pkg.tar.zst` from release of this repository, then install it using

    ```bash
    pacman -U moonbit-bin-0.1.0.20240403-1-x86_64.pkg.tar.zst
    ```

2. Or you can use your favorite AUR helper to install this package:

    ```bash
    paru -Syu moonbit-bin
    ```

## Caveats

This repository pre-bundle core into the package to have a correct path resolution when executing `moon`. Additionally, `/usr/bin/moon` is actually shell script wrapper over `/usr/lib/moon`, pointing `MOON_HOME` to `/usr/share/moonbit/lib`.
