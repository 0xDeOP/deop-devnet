#!/usr/bin/env bash

### install deps
sudo apt-get install -y libclang-dev pkg-config

### Reload source
source ~/.profile

### Install pm2
yarn global add pm2

### INSTALL RUSTUP
rust=$(which rustup)
if [ -z "$rust" ]; then 
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source ~/.profile
fi;

### Clone Chainhook repo and install
chainhook="$(pwd)/chainhook"
if [ -d "$chainhook" ]; then
  echo "Skipped chainhook installation"
else
  # Take action if $DIR exists. #
  git clone https://github.com/hirosystems/chainhook.git
  cd chainhook/
  cargo chainhook-install
  cd ../
fi

### Clone and install ordinals api
ordinals_api="$(pwd)/ordinals-api"
if [ -d "$ordinals_api" ]; then
  echo "Skipped ordinals-api installation"
else
  # Take action if $DIR exists. #
  git clone https://github.com/0xDeOP/ordinals-api.git
  cp ordinals-indexer/ordinals-env ordinals-api/.env
  cd ordinals-api/
  npm install
  npm run generate:git-info
  npm run build
  cd ../
fi

### Go back to directory
echo "Finished installation ..."
