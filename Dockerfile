# shadowsocks
#
# VERSION 0.0.1

FROM ubuntu:14.04.3
MAINTAINER Zhen Kyle <zhenkyle@gmail.com>

RUN apt-get update && \
    apt-get install -y python-pip wget
RUN pip install shadowsocks==2.8.2
RUN wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
RUN tar zxf LATEST.tar.gz
RUN cd libsodium*
RUN ./configure
RUN make && make install
RUN echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
RUN ldconfig


# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/sslocal"]
