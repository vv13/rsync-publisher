FROM alpine:3.10
RUN apk add -U \
    openssh-client \
    rsync && \
    rm -f /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
