FROM blockstream/esplora:latest

COPY run.sh /srv/explorer/
COPY .cookie /data/.cookie
COPY bitcoin.regtest.conf /srv/explorer/source/contrib/bitcoin-regtest-explorer.conf.in

RUN chmod +x /srv/explorer/run.sh