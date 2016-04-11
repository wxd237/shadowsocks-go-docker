FROM golang:1.6-onbuild


ENV GOPATH /gopackage
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server

ENV PATH $PATH:/gopackage/bin/

