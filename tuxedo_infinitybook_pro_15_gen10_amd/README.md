Overview
========

Does not feel like a "Linux" laptop, hardware support is not great.


FreeBSD
=======

- amdgpu 890M is not supported:
    - <https://github.com/freebsd/drm-kmod/issues/372>
    - <https://github.com/freebsd/drm-kmod-firmware/pull/38>
    - <https://github.com/freebsd/drm-kmod/issues/343>
    - <https://github.com/freebsd/drm-kmod/pull/332>

Linux
=====

- Ethernet adapter is not supported out of the box:
    - <https://www.tuxedocomputers.com/en/FAQ-TUXEDO-Stellaris-16-Gen6-Intel.tuxedo>
    - <https://gitlab.com/tuxedocomputers/development/packages/tuxedo-yt6801>

- `amdgpu` PSR feature has to be disabled, see `./etc/modprobe.d/amdgpu.conf`:
    - <https://bbs.archlinux.org/viewtopic.php?id=301260>
