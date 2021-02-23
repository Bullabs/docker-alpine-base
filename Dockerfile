FROM alpine:3.9
LABEL maintainer "Bullabs <containers@bullabs.dev>"

ENV HOME="/" \
    OS_ARCH="amd64" \
    OS_FLAVOUR="alpine-3.9" \
    OS_NAME="linux" \
    BULLABS_APP_NAME="alpine-base"

#install runtime packages   
RUN apk add --no-cache \
    ca-certificates \
    bash \
    curl \
    wget \
    coreutils \
    su-exec \
    shadow \
    tzdata 

COPY rootfs /
RUN /opt/bullabs/scripts/bullabs-setup.sh

CMD [ "/bin/bash" ]

