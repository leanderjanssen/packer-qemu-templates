#!/bin/sh -eux

# Add packer user to sudoers.
echo "packer        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/packer
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

