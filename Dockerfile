FROM dorowu/ubuntu-desktop-lxde-vnc:bionic
LABEL maintainer="Jianshen Liu <jliu120@ucsc.edu>"

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="ljishen/docker-vnc-ideaiu" \
      org.label-schema.description="Run IntelliJ IDEA from the docker container" \
      org.label-schema.url="https://github.com/ljishen/docker-vnc-ideaiu" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/ljishen/docker-vnc-ideaiu" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

RUN set -eux; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
        openjdk-8-jdk; \
        rm -rf /var/lib/apt/lists/*

ENV PATH=$PATH:/root/idea-IU/bin

# https://github.com/fcwu/docker-ubuntu-vnc-desktop/issues/85
ENV OPENBOX_ARGS="--startup /etc/xdg/openbox/autostart"

# add startup program
RUN echo "idea.sh &" >> /etc/xdg/openbox/autostart
