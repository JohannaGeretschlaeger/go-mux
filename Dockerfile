FROM golang:1.11-alpine

LABEL maintainer='s2010455007@students.fh-hagenberg.at'

WORKDIR /src

COPY *.go go.* ./

RUN ls

RUN CGO_ENABLED=0 go build -o /usr/myapp

EXPOSE 8888

CMD ["/usr/myapp"]
