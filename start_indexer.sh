#!/usr/bin/env bash
pm2 start -f ./ordinals-indexer/start_chainhook.sh

cd ./ordinals-api/
pm2 start -f dist/src/index.js

cd ../
pm2 start -f ./ordinals-indexer/start_chainhook_scan.sh
