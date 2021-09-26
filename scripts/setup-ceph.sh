#!/bin/bash

set -euo pipefail

curl --silent https://download.ceph.com/keys/release.asc | sudo apt-key add -
sudo apt-add-repository https://download.ceph.com/debian-pacific
sudo apt-get update
sudo apt install -y cephadm
