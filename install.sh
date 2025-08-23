#!/bin/sh

pacman -Sy --needed --no-confirm mmdblookup opendmarc openntpd opensmtpd fribidi freerdp2 tcpdump tcplay openvpn tinyproxy sniproxy iproute2 firekail arpwatch lldpd nftables dhcpcd tor arti dnscrypt-proxy knockd wireguard-tools meek usbguard macchanger
pacman -S  --needed --no-confirm kernel-hardening-checker qd sundials expect zfp dsdp
pacman -S  --needed --no-confirm yubico-pam pam_wrapper-docs pam_mount pam-u2f pam-krb5 pam-ihosts nss-pam-ldapd libpam-google-authenticator 
pacman -S  --needed --no-confirm zeromq fastd rspamd rustic bupstash monero unrealircd toxcore
pacman -S podman distrobox crun docker iucode-tool intel-ucode amd-ucode firecracker booster postfix restic yarn gitoxide wild tealdeer yazi mado procs handlr-regex skim rqbit rink dust lychee rshijack shadowsocks-rust inferno tealdeer dovecot
# bypass tls + ja3 + ja4 + http2 fingerprinting
pip install curl_cffi --upgrade
go get -u github.com/refraction-networking/utls
go get -u github.com/Danny-Dasilva/CycleTLS/cycletls 

#multi-lang layout switch [en/cn/ru/ir/il/pk/in/ar/jp/kr]
#multi-font for each lang 
#multi-kbd layout switch [dvorak + qwerty/colemak/workman + swapctrlcaps + deadkeys ...]

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
