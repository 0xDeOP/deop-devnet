#!/usr/bin/env bash

bitcoind -zmqpubhashtx="tcp://0.0.0.0:29000" -zmqpubrawblock="tcp://0.0.0.0:29000" -zmqpubhashblock="tcp://0.0.0.0:29000" -zmqpubrawtx="tcp://0.0.0.0:29000" -zmqpubhashtxhwm=10000 -printtoconsole=1 -txindex=1 -regtest=1 -rpcuser=deop-regtest -rpcpassword=deop-regtest -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcport=18443 -fallbackfee=0.00001 &

echo "Booting bitcoind ..."

sleep 2;
bitcoin-cli -regtest=1 -rpcuser=deop-regtest -rpcpassword=deop-regtest createwallet genesis || bitcoin-cli -regtest=1 -rpcuser=deop-regtest -rpcpassword=deop-regtest loadwallet genesis

while true; do bitcoin-cli -rpcwallet=genesis -regtest=1 -rpcuser=deop-regtest -rpcpassword=deop-regtest -generate 1; sleep 60; done