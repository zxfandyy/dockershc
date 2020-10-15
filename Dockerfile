FROM alpine:edge

ENV SHURL https://gist.githubusercontent.com/mixool/ff4bcf0640f45fcc41531dc796f4ed12/raw/de148827cb74992f11bdd98c0a17475663b66621/one.sh

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /worker /worker.x.c /var/cache/apk/*
    
CMD /worker.x
