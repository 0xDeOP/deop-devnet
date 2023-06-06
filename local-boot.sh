#!/usr/bin/env bash

bitcoind -printtoconsole=1 --regtest=1 --server=1 -connect=116.203.193.164:18444 -txindex=1 -rpcuser=deop-regtest -rpcpassword=deop-regtest -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcport=18443 -fallbackfee=0.00001