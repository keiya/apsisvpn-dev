# Tinc Server
FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y build-essential zlib1g-dev libncurses5-dev libreadline-dev liblzo2-dev libssl-dev gawk wget

RUN wget -nv -O tinc.tar.gz https://www.tinc-vpn.org/packages/tinc-1.1pre11.tar.gz
RUN tar xf tinc.tar.gz --strip-components 1
RUN ./configure
RUN make
RUN make install

#EXPOSE 655/tcp 655/udp

#RUN /usr/local/sbin/tinc init apsis

