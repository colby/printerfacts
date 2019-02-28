FROM alpine:latest
MAINTAINER Colby Olson "me@colbyolson.com"

EXPOSE 9991

ADD facts /

ENTRYPOINT while :; do /bin/echo -e "HTTP/1.0 200 OK\n\n$(shuf -n1 /facts)" | nc -lp 9991; done
