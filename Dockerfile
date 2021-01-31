FROM alpine:3.13

RUN \
    apk add --no-cache httpie

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]