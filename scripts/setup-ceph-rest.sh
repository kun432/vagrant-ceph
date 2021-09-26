#!/bin/bash

set -euo pipefail

sudo sed -i -e 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd

sudo cp /share/ceph_authorized_keys /root/.ssh/authorized_keys
