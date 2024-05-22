FROM golang:1.22 AS build
WORKDIR /go/src/app
COPY http.go .
RUN go mod init
RUN CGO_ENABLED=0 GOOS=linux \
    go build -o http .

FROM alpine:3.19
COPY --from=build /go/src/app/http .
CMD ["./http"]
