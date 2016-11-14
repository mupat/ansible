FROM alpine:3.4

MAINTAINER Mupat <dev@mupat.net>

RUN apk update && \
    apk add --no-cache ansible && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

CMD ["ansible", "--version"]
