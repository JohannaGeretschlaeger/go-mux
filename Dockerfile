FROM golang:1.16.2-alpine

LABEL maintainer='s2010455007@students.fh-hagenberg.at'

WORKDIR /src

COPY *.go go.* ./

RUN ls

RUN CGO_ENABLED=0 go build -o /usr/mydemoapp

EXPOSE 8888

CMD ["/usr/mydemoapp"]
