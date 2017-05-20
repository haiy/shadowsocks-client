# docker-shadowsocks-client

Shadowsocks client with HTTP proxy and support for salsa20/chacha20.

Exposes a privoxy HTTP proxy which can be set as system proxy or 
used by other docker containers that need proxying through shaodowsocks.

Also check out the compatible [docker-shadowsocks-server](https://github.com/tedostrem/docker-shadowsocks-server)

## Running
```
docker run -d \
	--name shadowsocks-client \
	-p ${HTTP_PROXY_PORT}:8118 
	tedostrem/shadowsocks-client \
		-b 0.0.0.0 \
		-s ${SS_SERVER_ADDRESS} \
		-p ${SS_SERVER_PORT} \
		-l ${SS_SOCKS5_PORT} \
		-k ${SS_PASSWORD} \
		-m ${SS_ENCRYPTION_METHOD}
```

## Start a container with access to proxy example
```
docker run -it --link shadowsocks-client \
	-e http_proxy=shadowsocks:8118 \
	-e https_proxy=shadowsocks:8118 \
	ubuntu:14.04 bash
```
