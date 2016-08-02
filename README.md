# LocalSuperNode

This repo contains the configuration files for Debian live-build to generate an Local Mesh Supernode for Freifunk.

The use of this Supernode is experimental. Please ask your community before you use it in a production network.

## Overview

Status: Experimental

License: GPL

Features:
* batman-adv (gateway mode)
* dns-server (dnsmasq)
* dhcp-server (dnsmasq)
* IPv6 support planned

## Howto build your Supernode

Please adjust auto/config for jour needs and run the following commands.

```
lb clean
lb config
lb build
```

This repo is tested with debian stretch and live-build 5.0~a11-1.

For more information visit (https://debian-live.alioth.debian.org/live-manual/unstable/manual/html/live-manual.en.html)

## Default Configuration
* eth0: dhcp-client
* eth0.vlan12: 10.25.0.1/19; batman-adv, dhcp-server, dns-server

## Customizing
Please take a look to `config/hooks/live` and `config/includes.chroot` to customize the configuration

To modify packages, edit `config/package-list/default.list.chroot`

## Persistent configuration

It's working. Documentation comes later...

## ToDo

* IPv6 support is missing
* --persistent configuration--
* Switch from dnsmasq to unbound and isc-dhcpd?

## History

### Version 0.1.0

First Release

* basic supernode settings are working
* no IPv6 support
