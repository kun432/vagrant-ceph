#!/bin/bash

set -euo pipefail

# set timezone
sudo timedatectl set-timezone Asia/Tokyo

# update all
sudo apt-get update -y
sudo apt-get upgrade -y

# install chrony
sudo apt-get install chrony -y
sudo systemctl start chrony
sudo systemctl enable chrony
