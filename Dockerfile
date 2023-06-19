FROM alpine:3.18.2
MAINTAINER Anders Nyvang

RUN set -x && \
    apk --no-cache add tzdata bash tinyproxy tini

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]