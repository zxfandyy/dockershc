FROM alpine:edge

ENV SHURL="https://gist.githubusercontent.com/mixool/0a8f1c32fc9d4c2a4ddb0557904d663a/raw/73fa488e12e8d9c863961b4366f514f54c630809/shcone.sh"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /var/cache/apk/* 
    
CMD /worker.x
