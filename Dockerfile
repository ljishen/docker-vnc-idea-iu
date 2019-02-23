FROM dorowu/ubuntu-desktop-lxde-vnc
MAINTAINER Jianshen Liu "jliu120@ucsc.edu"
ENV REFRESHED_AT 2019-02-23

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common git && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer

## Clean Up
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH=$PATH:/root/idea-IU/bin

# allow to add startup programs
RUN sed -i '/openbox/ s/$/ --startup \/etc\/xdg\/openbox\/autostart/' /etc/supervisor/conf.d/supervisord.conf

# add startup program
RUN echo "idea.sh &" >> /etc/xdg/openbox/autostart
