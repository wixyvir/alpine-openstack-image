set -ux

# Disable Root SSH Login
sed -i '/PermitRootLogin yes/d' /etc/ssh/sshd_config

# Fill Disk with Zeros
dd if=/dev/zero of=/EMPTY bs=1M

# Remove Zeroes
rm -f /EMPTY

# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
sync
sync
sync

exit 0
