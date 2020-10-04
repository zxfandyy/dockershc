FROM alpine:edge

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache shc && \
    wget https://gist.githubusercontent.com/mixool/a735fd179491f36db389af9428356d7a/raw/bc49161da0a54e3b3054a2e4faff1c50fa9f3619/nothingrun.sh && \
    shc -r -f /nothingrun.sh && \
    chmod +x /nothingrun.sh.x

CMD /nothingrun.sh.x
