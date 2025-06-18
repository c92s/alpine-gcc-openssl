FROM alpine:3.22.0

RUN apk add --no-cache \
    build-base \
    openssl-dev \
    openssl-libs-static