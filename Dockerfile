FROM alpine:3.16.3

RUN apk update && \
	apk upgrade && \
	apk add --no-cache tini && \
	rm -rf /var/cache/apk/* && \
	ln -s /dev/null /root/.ash_history && \
	adduser --disabled-password --no-create-home --shell /bin/false default

ENTRYPOINT ["/sbin/tini", "-vv", "--"]

USER default

WORKDIR /

CMD ["sh"]
