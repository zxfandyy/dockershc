FROM alpine:edge

ENV SHURL="https://gist.githubusercontent.com/mixool/0a8f1c32fc9d4c2a4ddb0557904d663a/raw/20d6b410e768e57acdcfac683e9943ceac2e54cd/shcone.sh"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /var/cache/apk/* 
    
CMD /worker.x
