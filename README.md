![example workflow](https://github.com/dalmatialab/dnsmasq/actions/workflows/main.yml/badge.svg)


# Supported tags and respective Dockerfile links

 - 1.0-rc-1

# What is Dnsmasq ? 

[Dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html) is a lightweight, easy to configure, DNS forwarder and DHCP server. It is designed to provide DNS and optionally, DHCP, to a small network. It can serve the names of local machines which are not in the global DNS. The DHCP server integrates with the DNS server and allows machines with DHCP-allocated addresses to appear in the DNS with names configured either in each host or in a central configuration file. Dnsmasq supports static and dynamic DHCP leases and BOOTP/TFTP for network booting of diskless machines.

<img src="https://github.com/dalmatialab/dnsmasq/blob/92515258c38ae5377cc42789b8eb265a37af6b07/logo.png?raw=true" width="200" height="150">

# How to use this image

## Start Dnsmasq instance

	$ docker run -d --name some-dnsmasq --privileged image:tag --log-queries --log-dhcp

Where:

 - `some-dnsmasq` is name you want to assign to your container
 - `image` is Docker image name
 - `tag` is Docker image version

## Volumes  

To save configurations mount `/etc/dnsmasq.conf` and `/var/lib/misc/dnsmasq.leases` to host paths.  

    $ -v some-host-path:/etc/dnsmasq.conf
    $ -v some-host-path:/var/lib/misc/dnsmasq.leases

## NOTE  


# License

