FROM seffeng/alpine:3.17

ENV EXTEND="python3 py3-pip"

RUN apk update && apk add --no-cache ${EXTEND} &&\
 ln -s /usr/bin/python3 /usr/bin/python &&\
 cd /tmp &&\
 rm -rf /var/cache/apk/* &&\
 rm -rf /tmp/*
