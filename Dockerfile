FROM alpine:edge

ADD worker /worker
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    chmod +x /worker && /worker
    
CMD /worker
