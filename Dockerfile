FROM seffeng/alpine:3.15

ENV EXTEND="python3 py3-pip"

RUN apk update && apk add --no-cache ${EXTEND} &&\
 if [ -f /usr/bin/python ] ; then (rm -rf /usr/bin/python) fi &&\
 ln -s /usr/bin/python3 /usr/bin/python &&\
 cd /tmp &&\
 rm -rf /var/cache/apk/* &&\
 rm -rf /tmp/*
