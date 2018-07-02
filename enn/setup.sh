#!/bin/bash

# goto script dir
cd "$(dirname "$0")"

echo "== Updating Docker images"
sudo docker pull nanocurrency/nano

echo "== Starting Docker containers"
sudo docker-compose up -d

echo "== Take a deep breath..."
# we need this as the node is crashing if we go on too fast
sleep 5s

# # check if init already done
# if [ -f /opt/easy-nano-node/init ]; then

#   echo "== Initialization already done, skipping ..."

# else

#   # echo "== Opening Nano Node Port"
#   # sudo ufw allow 7075

#   # echo "== Opening RPC Port"
#   # sudo ufw allow 80

#   echo "== Restarting Nano node container"
#   sudo docker restart enn_nanonode_1

#   # we're done, save for later
#   touch /opt/easy-nano-node/init

# fi

# get that nasty IP
serverip=$(ip route get 8.8.8.8 | awk '{ print $NF; exit }')

echo ""
echo "All done! *yay*"
echo "RPC endpoint: http://$serverip"
echo ""
echo "Have a look at the FAQ: https://nanotools.github.io/easy-nano-node/faq.html"
echo ""
