## build
FROM golang:1.12-alpine AS build-env

ADD . /go/src/hanker-hello

WORKDIR /go/src/hanker-hello

RUN go build main.go

## run
FROM alpine:3.9

LABEL maintainer="Hanker <system@hankercloud.com>"

ADD static /hanker-hello/static
ADD conf /hanker-hello/conf
ADD views /hanker-hello/views

RUN mkdir -p /hanker-hello && mkdir -p /hanker-hello/log

WORKDIR /hanker-hello

COPY --from=build-env /go/src/hanker-hello/main /hanker-hello

ENV PATH $PATH:/hanker-hello

EXPOSE 8080
CMD ["./main"]

