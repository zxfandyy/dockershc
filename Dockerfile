FROM alpine

ENV PORT        3000
ENV PBURL       https://github.com/mixool/dockershc/raw/diypb/worker.pb
ENV WORKERURL   https://github.com/mixool/dockershc/raw/diypb/worker

RUN wget -O /worker $WORKERURL && wget -O /worker.pb $PBURL && chmod +x /worker

CMD /worker -config /worker.pb