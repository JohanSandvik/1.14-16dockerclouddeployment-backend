FROM ubuntu:22.04

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y golang git

COPY ./example-backend/. ./

RUN go build

ENV REQUEST_ORIGIN=http://localhost:5001

EXPOSE 8080

CMD ["./server"]
