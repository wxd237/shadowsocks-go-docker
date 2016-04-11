FROM golang:1.6-alpine

ENV GOPATH /gopackage
RUN apk add --update git && rm -rf /var/cache/apk/*
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server

ENV PATH $PATH:/gopackage/bin/

ADD config.json ~
EXPOSE 8388


