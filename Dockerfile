FROM golang:1.6-alpine

RUN apk add --update git && rm -rf /var/cache/apk/*
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server


ADD config.json /usr/src/app/
ADD apprun /usr/src/app/
RUN chmod 700 /usr/src/app/apprun
EXPOSE 8388


ENTRYPOINT ["/usr/src/app/apprun"]

CMD ["shadowsocks-server"]
