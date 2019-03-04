FROM alpine:latest

RUN apk update
RUN apk add bash socat

# copy entrypoint
RUN mkdir -p /opt/docker-init
ADD init /opt/docker-init

ENV INPORT=12345
ENV OUT1=
ENV OUT2=

# start from init folder
WORKDIR /opt/docker-init
ENTRYPOINT ["./entrypoint"]