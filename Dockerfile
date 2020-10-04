FROM alpine:edge
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache shc gcc musl-dev && \
    wget https://gist.githubusercontent.com/mixool/a735fd179491f36db389af9428356d7a/raw/14e8949b4652be45ca85eb6b7c374b190cc64733/nothingrun.sh && \
    shc -r -f /nothingrun.sh && \
    chmod +x /nothingrun.sh.x
CMD /nothingrun.sh.x
