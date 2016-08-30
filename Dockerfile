FROM alpine:3.4

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less \
      bash gettext jq && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
