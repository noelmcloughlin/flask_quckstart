#!/usr/bin/env bash

apt-get install python3-venv -y
git clone http://github.com/cpapidas/docker-compose-redis-cluster
cd docker-compose-redis-cluster || exit 1
docker-compose build
docker-compose up -d
