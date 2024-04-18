#!/bin/bash

set -e

TIMEZONE=Asia/Dubai

# fix apt
{
    echo 'APT::Install-Recommends "false";';
    echo 'APT::Install-Suggests "false";';
} > /etc/apt/apt.conf.d/90disable_junk

# alacritty
add-apt-repository ppa:aslatter/ppa -y

# get rid of Ubuntu junk
dpkg --get-selections | grep cloud | cut -f 1 | xargs apt purge -y


# save time on boot
systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service
#systemctl disable network-online.target
#systemctl mask network-online.target


apt install -y xorg firefox fluxbox xterm neovim alacritty tint2
#apt install -y linux-oem-20.04
apt install -y v4l-utils pavucontrol alsa-base pulseaudio

apt install -y xdm
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=948346
rm -f /etc/logrotate.d/xdm

# time
timedatectl set-timezone "${TIMEZONE}"

# locale
locale-gen C.UTF-8
echo LC_ALL="C.UTF-8" | tee /etc/default/locale
