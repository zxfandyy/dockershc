FROM alpine:edge

ENV SHURL="https://raw.githubusercontent.com/mixool/dockershc/main/scripts/shc_ss.sh"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /var/cache/apk/* 
    
CMD /worker.x
