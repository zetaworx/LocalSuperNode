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
You need live-build 5.0~a11-1.

* lb clean
* lb config
* lb build

For more information visit https://debian-live.alioth.debian.org/live-manual/unstable/manual/html/live-manual.en.html

## Default Configuration
* eth0: dhcp
* eth0.vlan12: 172.16.0.1/22; batman-adv, dhcp-server, dns-server

## Customizing
Please take a look to config/hooks/live for customizing configuration

To modify packages edit config/package-list/default.list.chroot

## Persistent configuration
It's working. Documentation comes later...

## ToDo
* IPv6 support is missing

## History

### Version 0.1.0
First Release
