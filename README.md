# Ordinals Devnet Installation

The repo contains the full stacks setup for ordinals development env: bitcoind, ordinals, an explorer and an RPC API (blockstream electrs and esplora), docker based.

## Getting started

### Prerequisites

- Install docker, following the docs here https://docs.docker.com/engine/install/
- Clone the `ord` repo in the root directory, install `ord` cli by building the latest version, following the docs https://github.com/casey/ord#building

### Start bitcoind & esplora explorer + API

```bash
docker compose up -d
```

### Start ordinals server

```bash
bash ord.sh server --http-port 3003
```

### Local URLs

- Bitcoin RPC: [http://deop-regtest:deop-regtest@127.0.0.1:18443?timeout=10000](http://deop-regtest:deop-regtest@127.0.0.1:18443?timeout=10000)
- Explorer: http://127.0.0.1:3002/
- Ordinals Explorer: http://127.0.0.1:3003/
- Esplora RPC: http://127.0.0.1:3004/

### Remote URLs

- Esplora: https://scan.deop.pro/
- Ordinals: https://ordinals.deop.pro/
- Mint: https://mint.deop.pro/
- Wallet: https://wallet.deop.pro/
