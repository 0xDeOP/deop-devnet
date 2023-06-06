#!/usr/bin/env bash

docker exec --user bitcoin bitcoin-server bitcoin-cli -regtest -rpcuser=deop-regtest -rpcpassword=deop-regtest "$@"