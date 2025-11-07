Filesystems
===========

ZFS
---

- ZFS is the best option for a shared filesystem for BSD/Linux, e.g., there is
  no reliable RW support for UFS in Linux.

- ZFS versions may not be the same in different OS, so it is generally a good
  idea to set compatibility option when creating a pool, e.g.,
   `zpool create -m <mountpoint> -o compatibility=<openzfs_git_repo>/cmd/zpool/compatibility.d/openzfs-2.2 <pool> /dev/<partition>`

- Pools may not be imported automatically if they were used by another OS, in
  which case forced imports can be used, e.g., by changing `ZPOOL_IMPORT_OPTS`
  in `/etc/default/zfs` in Ubuntu.


FreeBSD
=======

- UID assignment policies are slightly different: FreeBSD starts with 1001,
  Linux -- 1000. This might lead to some ownership issues if there are shared
  filesystems.


Linux
=====

Generic
-------

### Filesystems

- Mounting UFS: `sudo mount -r -t ufs -o ufstype=ufs2 ...` (RO only).



Ubuntu
------

### Installation

- Is not going to recognize EFI partition if its UUID not set properly, see
  <https://wiki.archlinux.org/title/EFI_system_partition>.


Alpine
------

### Installation (setup-alpine)

- Cyrillic is not supported in the console, setting keymap to russian makes it
  unusable -- there is no way to switch back.
- Wifi gets stuck while scanning. Can be setup manually, e.g., with
  `wpa_supplicant`, which needs to be installed (the packae is included in the
  image).

### Cyrillic and fonts in console

1. Keyboard map in `/etc/conf.d/loadkmap`
   `KEYMAP=/etc/keymap/us-altgr-intl.bmap.gz`
2. Install `kbd` and `kbd-legacy`.
3. Set keymap in `/etc/conf.d/loadkeys`
   `keymap="legacy/i386/qwerty/ruwin_ct_sh-UTF-8"`.
4. Set cyrillic font in `/etc/conf.d/consolefont`
   `consolefont="UniCyrExt_8x16.psf.gz"`.
5. Patch `/etc/init.d/consolefont` to increase font size: `setfont` -> `setfont
   --double`.
6. Enable `loadkeys` and `consolefont` services.


Others
------

- Chimera: interesting, but very few packages, pretty much developed by one
  guy.

- Nix: requires internet connection during installation, but old WiFi hardware not
  recognized for some reason.

- Artix: ???


Hardware
========

- <https://www.reddit.com/r/AMDLaptops/comments/hzlcjo/all_of_the_vendors_that_are_offering_the_tongfang/>

