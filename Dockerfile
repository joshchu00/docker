FROM golang:1.11-alpine
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community"  >> /etc/apk/repositories
RUN apk update
RUN apk --no-cache add tzdata
RUN apk --no-cache --allow-untrusted -X https://apkproxy.herokuapp.com/sgerrand/alpine-pkg-glibc add glibc glibc-bin
RUN apk --no-cache add librdkafka librdkafka-dev --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
