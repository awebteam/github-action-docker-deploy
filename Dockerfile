FROM alpine:3.13

RUN \
    apk add --no-cache httpie

RUN chmod +x entrypoint.sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]