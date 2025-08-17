```
systemctl start --now dnscrypt-proxy && systemctl status dnscrypt-proxy
```

for IPv4 testing (Cloudflare):
```
ping -4n -c1 1.1.1.1
```
for IPv6 testing (Cloudflare): &nbsp;&nbsp;&nbsp;&nbsp; [works when suppported by your ISP & router + configured DNS64 for dnscrypt-proxy|DNS server support for IPv6]
```
ping -6n -c1 2606:4700:4700::1111
```
