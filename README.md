# Tinyproxy minimal container image

Image: [nyvanga/tinyproxy](https://hub.docker.com/r/nyvanga/tinyproxy)

To change configuration, just volume mount a conf file into the container:
```
docker run -v my_special_tinyproxy.conf:/etc/tinyproxy/tinyproxy.conf nyvanga/tinyproxy my_special_tinyproxy
```

Or set individual values with ENV variables:
```
TINYPROXY_PORT=8989
TINYPROXY_BIND=127.0.0.1
TINYPROXY_ALLOW_1=192.168.0.0/16
TINYPROXY_ALLOW_2=172.16.0.0/12
TINYPROXY_ALLOW_3=10.0.0.0/8
TINYPROXY_BASICAUTH=foo bar
```
See example in [docker compose file](docker-compose.yml#L11-L16)

## Test build image

Run docker-compose: ```docker compose up --build```