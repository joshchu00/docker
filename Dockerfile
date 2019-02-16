FROM golang:1.11.5-alpine

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
  && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community"  >> /etc/apk/repositories

RUN apk update \
  && apk --no-cache add tzdata \
  && apk --no-cache --allow-untrusted -X https://apkproxy.herokuapp.com/sgerrand/alpine-pkg-glibc add glibc glibc-bin \
  && apk --no-cache add librdkafka librdkafka-dev --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
