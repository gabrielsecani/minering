#!/bin/sh
echo updating config
echo pool_address = $POOLADDR
echo wallet_address = $WALLETADDR
echo pool_password = $POOLPWD
echo http_port = $HTTPPORT

#sed -r \
#        -e 's/^("pool_address" : ).*,/\1"us-east.cryptonight-hub.miningpoolhub.com:20580",/' \
#        -e 's/^("wallet_address" : ).*,/\1"43FL5jESsu7KTmoSb8yH74RM6XGsA7q6U3CVocEDWERX5yH4cCXkoQHWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm41321TH",/' \
#        -e 's/^("pool_password" : ).*,/\1"gabriellucas:x",/' \
#        /usr/local/src/xmr-stak-cpu/config.txt > /usr/local/etc/config.txt

sed -r \
        -e 's/^("pool_address" : ).*,/\1"'$POOLADDR'",/' \
        -e 's/^("wallet_address" : ).*,/\1"'$WALLETADDR'",/' \
        -e 's/^("pool_password" : ).*,/\1"'$POOLPWD'",/' \
        -e 's/^("httpd_port" : ).*,/\1'$HTTPPORT',/' \
        /usr/local/src/xmr-stak-cpu/config.txt > /usr/local/etc/config.txt

echo starting xmr-stak-cpu

xmr-stak-cpu /usr/local/etc/config.txt
