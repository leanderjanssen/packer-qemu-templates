#!/bin/sh -eux

# Configure ttyS0 to enable console in virsh
sed -i -e 's/^GRUB_CMDLINE_LINUX_DEFAULT=""/GRUB_CMDLINE_LINUX_DEFAULT="console=tty1 console=ttyS0 net.ifnames=0"/g' /etc/default/grub
sed -i -e 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/g' /etc/default/grub
update-grub

# Change default boot target to multi-user
systemctl set-default multi-user.target
