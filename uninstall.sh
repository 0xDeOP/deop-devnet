#!/usr/bin/env bash

docker rm -f bitcoin-server
docker rm -f esplora

pm2 delete all
docker volume prune -f

rm -rf data/
rm -rf ord-data/