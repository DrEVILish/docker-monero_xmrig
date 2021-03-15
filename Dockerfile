FROM alpine

RUN apk update && \
    apk add git make cmake lcmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev --no-cache && \
    rm -rf /var/cache/apk/

COPY entrypoint.sh /usr/local/bin/xmrig.sh

ENTRYPOINT ["xmrig.sh"]
