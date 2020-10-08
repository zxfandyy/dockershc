FROM alpine

ENV PORT    3000
ENV PBURL
ENV WORKERURL

RUN wget -O /worker $WORKERUL && \
	wget -O /worker.pb $PBURL && \
	chmod +x /worker

CMD /worker -config /worker.pb