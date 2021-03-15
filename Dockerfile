FROM alpine

RUN apk update && \
    apk add git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers && \
    rm -rf /var/cache/apk/

COPY entrypoint.sh /usr/local/bin/xmrig.sh

ENTRYPOINT ["xmrig.sh"]
