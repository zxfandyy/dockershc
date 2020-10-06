FROM alpine:edge

ENV SHURL="https://gist.githubusercontent.com/mixool/0a8f1c32fc9d4c2a4ddb0557904d663a/raw/0d97c73f9b5c8c20e891a2d7f983692ada73516f/shcone.sh"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /var/cache/apk/* 
    
CMD /worker.x
