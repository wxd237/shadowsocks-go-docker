FROM golang:alpine

RUN apk add --update git && rm -rf /var/cache/apk/*

RUN go get -u -v github.com/shadowsocks/go-shadowsocks2

ADD apprun /usr/src/app/
EXPOSE 8400

RUN apk del git

ENV ENCRYPT_TYPE AEAD_AES_256_GCM


RUN chmod 700 /usr/src/app/apprun

ENTRYPOINT ["/usr/src/app/apprun"]

CMD ["go-shadowsocks2 -s ':8400' -password Adgj1234 -cipher $ENCRYPT_TYPE"]
