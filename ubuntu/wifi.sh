#!/bin/bash

INTERFACE=$1
NETWORK=$2
KEY=$3

mkdir -p /etc/wpa_supplicant
{
    echo "country=NO"
    echo "p2p_disabled=1"
    wpa_passphrase "${NETWORK}" "${KEY}"
} > /etc/wpa_supplicant/wpa_supplicant-${INTERFACE}.conf

systemctl enable "wpa_supplicant@${INTERFACE}"

echo "[Match]
Name=${INTERFACE}

[Network]
DHCP=yes" > /etc/systemd/network/${INTERFACE}.network
