FROM alpine:edge

ADD worker /worker

RUN chmod +x /worker && /worker
    
CMD /worker