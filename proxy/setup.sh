#!/bin/bash

# goto script dir
cd "$(dirname "$0")"

echo "== Starting Docker containers"
sudo docker-compose up -d

# install service
sudo cp ./docker-compose-app.service /etc/systemd/system/docker-compose-app.service
sudo systemctl enable docker-compose-app
