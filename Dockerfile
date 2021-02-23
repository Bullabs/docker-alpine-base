FROM docker.pkg.github.com/bullabs/docker-alpine-base/docker-alpine-base:3.13
LABEL maintainer "Bullabs <containers@bullabs.dev>"
ENV BULLABS_APP_NAME="{APPNAME}"

# Install required system packages and dependencies  

COPY rootfs /


ENTRYPOINT [ "/opt/bullabs/{APPNAME}/scripts/entrypoint.sh" ]
CMD [ "/opt/bullabs/{APPNAME}/scripts/run.sh" ]
