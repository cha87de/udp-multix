# udp-multix
A Docker Image UDP Multiplexer with socat

Docker Image is available via Docker Hub: https://cloud.docker.com/repository/docker/cha87de/udp-multix


Example Usage:

```
docker run --rm -ti -e INPORT=12345 -e OUT1=127.0.0.1:12346 -e OUT2=127.0.0.1:12347 --net=host cha87de/udp-multix
```

All UDP traffic coming to port `12345` will be simultaneously redirected to `127.0.0.1:12346` and `127.0.0.1:12347`.

