# LocalSuperNode

Status: Experimental
License: GPL

This repo contains the configuration to generate an Local Mesh Supernode for Freifunk.


## Howto build your Supernode
You need live-build 5.0~a11-1.

* lb clean
* lb config
* lb build

For more information visit https://debian-live.alioth.debian.org/live-manual/unstable/manual/html/live-manual.en.html

## Default Configuration
* eth0: dhcp
* eth0.vlan12: 172.16.0.1/22; batman-adv, dhcp-server, dns-server

## ToDo
* use batman-adv backport
* persistent configuration support and scripts

## History

### Version 0.1.0
Inital commit
