FROM ubuntu:16.04

RUN apt-get update \
    && apt-get -qq --no-install-recommends install \
        libmicrohttpd10 \
        libssl1.0.0 \
    && rm -r /var/lib/apt/lists/*

RUN set -x \
    && buildDeps=' \
        ca-certificates \
        cmake \
        curl \
        g++ \
        libmicrohttpd-dev \
        libssl-dev \
        make \
    ' \
    && apt-get -qq update \
    && apt-get -qq --no-install-recommends install $buildDeps \
    && rm -rf /var/lib/apt/lists/* \

ENV XMR_STAK_CPU_VERSION v2.2.0

RUN mkdir -p /usr/local/src/xmr-stak-cpu/build \
    && cd /usr/local/src/xmr-stak-cpu/ \
    && curl -sL https://github.com/fireice-uk/xmr-stak/archive/$XMR_STAK_CPU_VERSION.tar.gz | tar -xz --strip-components=1 \
    && sed -i 's/constexpr double fDevDonationLevel.*/constexpr double fDevDonationLevel = 0.0;/' donate-level.h \
    && cd build \
    && cmake .. \
    && make -j$(nproc) \
    && cp bin/xmr-stak-cpu /usr/local/bin/ \
	&& apt-get -qq --auto-remove purge $buildDeps

ENV WALLETADDR 43FL5jESsu7KTmoSb8yH74RM6XGsA7q6U3CVocEDWERX5yH4cCXkoQHWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm41321TH
ENV POOLADDR xmr.pool.minergate.com:45560
ENV POOLPWD DockCast:gabriel_lucas666@msn.com
ENV HTTPPORT 16000

ENV sed -r \
        -e 's/^("pool_address" : ).*,/\1"'$POOLADDR'",/' \
        -e 's/^("wallet_address" : ).*,/\1"'$WALLETADDR'",/' \
        -e 's/^("pool_password" : ).*,/\1"'$POOLPWD'",/' \
        -e 's/^("httpd_port" : ).*,/\1"'$HTTPPORT'",/' \
        /usr/local/src/xmr-stak-cpu/config.txt > /usr/local/etc/config.txt

COPY run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT /run.sh

#"pool_address": "pool.supportxmr.com:3333",
#"wallet_address": "43FL5jESsu7KTmoSb8yH74RM6XGsA7q6U3CVocEDWERX5yH4cCXkoQHWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm41321TH",
#"pool_password": "DockCast:gabriel_lucas666@msn.com",