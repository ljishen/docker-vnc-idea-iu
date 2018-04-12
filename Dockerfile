FROM consol/ubuntu-xfce-vnc
MAINTAINER Jianshen Liu "jliu120@ucsc.edu"
ENV REFRESHED_AT 2018-04-12

USER 0

RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common git && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer

## Clean Up
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

## switch back to default user
USER 1000

ENV PATH=$PATH:/headless/ideaUI/bin
