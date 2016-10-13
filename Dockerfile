FROM lukin0110/libsodium:last
MAINTAINER Fang Qiuming <fangqiuming@outlook.com>

RUN apt-get install -y python-pip
RUN pip install shadowsocks==2.8.2

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/sslocal"]
