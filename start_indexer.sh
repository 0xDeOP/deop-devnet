#!/usr/bin/env bash
pm2 start ./ordinals-indexer/start_chainhook.sh

cd ./ordinals-api/
pm2 start dist/src/index.js

cd ../