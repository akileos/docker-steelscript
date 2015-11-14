FROM gliderlabs/alpine:3.2
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && rm -rf /var/cache/apk/*
RUN pip install steelscript paramiko steelscript.cmdline steelscript.steelhead

