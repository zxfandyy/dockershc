FROM alpine:edge

ENV SHURL https://gist.githubusercontent.com/mixool/977dacedcabc39aca2be8b4535fdf9ef/raw/1b43d119c649924e8bd4acfd44a8fc206e248350/shctwo.sh

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /var/cache/apk/* 
    
CMD /worker.x
