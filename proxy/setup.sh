#!/bin/bash

# goto script dir
cd "$(dirname "$0")"

echo "== Starting Docker containers"
sudo docker-compose up -d