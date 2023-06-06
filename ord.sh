#!/usr/bin/env bash

$(pwd)/ord/target/release/ord --regtest --bitcoin-rpc-user deop-regtest --bitcoin-rpc-pass deop-regtest --data-dir ./ord-data "$@"
