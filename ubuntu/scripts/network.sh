#!/bin/sh -eux

# Clean up network interfaces, cloud-config will take care of this 
cat > /etc/network/interfaces << EOL
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

EOL
 
# Delete old dhcp lease file
rm -rf /var/lib/dhcp/*
