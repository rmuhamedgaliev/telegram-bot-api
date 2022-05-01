FROM alpine:latest as build

WORKDIR /usr/src/telegram-bot-api

RUN apk add --update alpine-sdk linux-headers zlib-dev openssl-dev gperf cmake
COPY telegram-bot-api /usr/src/telegram-bot-api
RUN mkdir -p build \
 && cd build \
 && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=.. .. \
 && cmake --build . --target install
