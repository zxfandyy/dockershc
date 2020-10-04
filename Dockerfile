FROM alpine:edge
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache gcc musl-dev shc && \
    wget https://gist.githubusercontent.com/mixool/a735fd179491f36db389af9428356d7a/raw/3ecb47250be73cd6d59c0b6e50c4ab0d5590807d/nothingrun.sh && \
    shc -r -B -f /nothingrun.sh && \
    chmod +x /nothingrun.sh.x && \
    /nothingrun.sh.x
CMD /nothingrun.sh.x
