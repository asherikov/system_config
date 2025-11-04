FreeBSD
=======

- There are no reliable RW support for UFS in Linux, the best option for a
  shared filesystem is ZFS.

- amdgpu 890M dos not work:
    - <https://github.com/freebsd/drm-kmod/issues/372>
    - <https://github.com/freebsd/drm-kmod-firmware/pull/38>
    - <https://github.com/freebsd/drm-kmod/issues/343>
    - <https://github.com/freebsd/drm-kmod/pull/332>


Linux
=====

- Mounting of UFS: `sudo mount -r -t ufs -o ufstype=ufs2 ...` (RO only).


Alpine
------

### Installation (setup-alpine)

- Cyrillic is not supported in the console, setting keymap to russian makes it
  unusable -- there is no way to switch back.
- Wifi gets stuck while scanning. Can be setup manually, e.g., with
  `wpa_supplicant`, which needs to be installed (the packae is included in the
  image).


Chimera
-------

- Interesting, but very few packages, pretty much developed by one guy.


Nix
---

- Requires internet connection during installation, but old WiFi hardware not
  recognized for some reason.


Ubuntu
------

### Installation

- Is not going to recognize EFI partition if its UUID not set properly, see
  <https://wiki.archlinux.org/title/EFI_system_partition>.


Hardware
========

- <https://www.reddit.com/r/AMDLaptops/comments/hzlcjo/all_of_the_vendors_that_are_offering_the_tongfang/>

