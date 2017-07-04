FROM ventx/docker-alpine:3.6

ENV BASE_VERSION 0.0.1

ADD rootfs /

RUN apk update && \
  apk upgrade && \
  apk add \
    wget \
    ca-certificates \
    curl \
    bash \
    bash-completion \
    ncurses \
    gettext \
    tar \
    mg \
    unzip \
    jq \
    s6 \
    rsync && \
  rm -rf /var/cache/apk/* && \
  update-ca-certificates

CMD ["/bin/bash"]
