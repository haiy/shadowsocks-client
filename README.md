docker-sslocal with support for Chacha20
==================

The container will run a ss client and expose a socks5 proxy on a local port.

This repository forked from [zhenkyle/docker-sslocal](https://github.com/zhenkyle/docker-sslocal), added support for Chacha20.

Quick Start
-----------

This image uses ENTRYPOINT to run the containers as an executable.

    docker run -d -p $SOCKS5_PORT:$SOCKS5_PORT fangqiuming/docker-sslocal -b 0.0.0.0 -s $SS_SERVER_IP -p $SS_SERVER_PORT -l $SOCKS5_PORT -k $SS_PASSWORD -m chacha20

For more information see [zhenkyle/docker-sslocal](https://github.com/zhenkyle/docker-sslocal).
