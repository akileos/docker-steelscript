FROM gliderlabs/alpine:latest
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && rm -rf /var/cache/apk/*
RUN pip install steelscript paramiko steelscript.cmdline steelscript.steelhead
RUN steel install --steelhead
