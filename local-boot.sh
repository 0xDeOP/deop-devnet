#!/usr/bin/env bash

bitcoind -zmqpubhashblock="tcp://0.0.0.0:29000" -zmqpubrawblock="tcp://0.0.0.0:29001" -zmqpubhashtx="tcp://0.0.0.0:29002"  -zmqpubrawtx="tcp://0.0.0.0:29003" -zmqpubhashtxhwm=10000 -printtoconsole=1 --regtest=1 --server=1 -connect=${SERVER_IP}:18444 -txindex=1 -rpcuser=deop-regtest -rpcpassword=deop-regtest -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcport=18443 -fallbackfee=0.00001
