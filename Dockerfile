FROM debian:latest

RUN apt-get -y update 

# SDK dependencies
RUN apt-get install -y mono-complete cmake git asciidoc gcc python3 python3-pip libsdl1.2-dev libsdl1.2debian curl
RUN apt-get install -y flex bison imagemagick libreadline-dev libboost-dev libmagickwand-dev git sudo

# Extras for building KnightOS kernels: mkrom, patchrom
RUN git clone git://github.com/KnightOS/mkrom.git && cd mkrom && cmake . && make && make install
RUN git clone git://github.com/KnightOS/patchrom.git && cd patchrom && cmake . && make && make install

# Actual SDK
RUN curl --retry 5 -O https://raw.githubusercontent.com/KnightOS/knightos.org/gh-pages/install-sdk && chmod +x install-sdk && ./install-sdk

CMD /bin/bash
