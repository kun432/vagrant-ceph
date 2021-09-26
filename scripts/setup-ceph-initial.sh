#!/bin/bash

set -euo pipefail

sudo cephadm bootstrap --mon-ip 10.10.0.21
sudo cp /root/.ssh/authorized_keys /share/ceph_authorized_keys
