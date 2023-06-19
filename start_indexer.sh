#!/usr/bin/env bash

pm2 start ./ordinals-indexer/start_chainhook.sh
pm2 start ./ordinals-api/dist/src/index.js