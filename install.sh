#!/bin/bash

echo "== Cloning installation"
git -C /opt/easy-nano-node pull || git clone https://github.com/rawrmaan/nanode-do-node.git /opt/easy-nano-node

echo "== Starting installation"
sudo bash /opt/easy-nano-node/enn/setup.sh