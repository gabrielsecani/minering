# Usage: docker build .
# Usage: docker run tpruvot/cpuminer-multi -a cryptonight --url=stratum+tcp://pool.supportxmr.com:5555 --user=43FL5jESsu7KTmoSb8yH74RM6XGsA7q6U3CVocEDWERX5yH4cCXkoQHWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm41321TH --pass=cpuminer:gabriel_lucas666@msn.com

FROM		ubuntu:14.04
MAINTAINER	Tanguy Pruvot <tanguy.pruvot@gmail.com>

RUN		apt-get update -qq

RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git \
    && rm -rf /var/lib/apt/lists/*

RUN		git clone https://github.com/tpruvot/cpuminer-multi -b linux

RUN		cd cpuminer-multi && ./build.sh

RUN apt-get -qq --auto-remove purge automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

WORKDIR		/cpuminer-multi
ENTRYPOINT	["./cpuminer"]

#docker run --rm tpruvot/cpuminer-multi --benchmark -a axiom      #15 H/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a blake      #8000 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a blakecoin  #10500 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a blake2s    #6200 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a bmw        #4400 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a c11/flax   #95 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a cryptolight#265 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a cryptonight#70 H/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a decred     #8000 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a dmd-gr     #415 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a drop       #11 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a fresh      #195 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a groestl    #415 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a heavy      #37 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a keccak     #3200 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a luffa      #1450 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a lyra2re    #300 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a lyra2rev2  #195 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a myr-gr     #690 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a neoscrypt  #10 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a nist5      #310 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a pluck      #750 H/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a pentablake #1400 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a quark      #200 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a qubit      #170 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a scrypt     #30 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a scrypt:4   #1180 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a scrypt:512   #60 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a scrypt-jane #170 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a scrypt-jane:4 #135 H/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a scrypt-jane:20 #5 H/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a shavite3    #1000 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a sha256d     #16000 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a sia         #5500 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a sib         #70 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a skein       #2600 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a skein2      #3100 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a s3          #460 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a vanilla     #10600 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a x11evo      #95 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a x11         #98 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a x13         #65 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a x14         #59 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a x15         #57 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a x17         #55 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a xevan       #19 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a yescrypt    #1.5 kH/s
#docker run --rm tpruvot/cpuminer-multi --benchmark -a zr5         #140 kH/s
