#!/bin/sh -eux

# Remove Ansible.
apt-get purge -y ansible
apt-get --purge -y autoremove

# Run a apt-get clean
apt-get autoclean
apt-get clean

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
