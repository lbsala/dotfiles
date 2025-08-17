#!/bin/sh

pacman -Sy --needed --no-confirm mmdblookup opendmarc openntpd opensmtpd fribidi freerdp2 tcplay openvpn iproute2 firekail arpwatch lldpd nftables dhcpcd tor arti dnscrypt-proxy knockd wireguard-tools meek usbguard macchanger
pacman -S --needed --no-confirm kernel-hardening-checker qd sundials expect zfp dsdp

# bypass tls + ja3 + ja4 + http2 fingerprinting
pip install curl_cffi --upgrade
go get -u github.com/refraction-networking/utls
go get -u github.com/Danny-Dasilva/CycleTLS/cycletls 

#proxy for mimicing ja3 fingerprints
git clone --depth=1 https://github.com/LyleMi/ja3proxy
#proxy for DPI spoofing
go install github.com/xvzc/SpoofDPI/cmd/spoofdpi@latest

#universal proxy bypass tool
curl -fsSL https://sing-box.app/install.sh | sh -s -- --beta

# Build connectivity-measurement && pluggable-transports && other interesting tools
git clone --depth=1 https://gitlab.torproject.org/tpo/anti-censorship

# list of anti-censorship protocols projects 
# https://github.com/2dust/v2rayN/wiki/List-of-supported-cores
