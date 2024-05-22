FROM golang:1.22

WORKDIR /go/src/app

COPY http.go .

RUN go mod init

RUN CGO_ENABLED=0 GOOS=linux \
    go build -o http .

CMD ["./http"]
