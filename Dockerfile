FROM ubuntu:14.04
MAINTAINER Sidirius <sid@sh87.net>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root


RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends supervisor \
        sudo nano \
        net-tools \
        lxde x11vnc xvfb \
        gtk2-engines-murrine ttf-ubuntu-font-family \
        nodejs firefox

RUN apt-get install -y xrdp \ 
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

ADD noVNC /noVNC/

EXPOSE 6080
EXPOSE 5900
EXPOSE 3389

COPY supervisord.conf /
COPY startup.sh /
RUN useradd --create-home --shell /bin/bash --user-group --groups adm,sudo ubuntu
RUN echo "ubuntu:PASSWD" | chpasswd

# Define working directory.
VOLUME ["/home/ubuntu"]
CMD ["/usr/bin/supervisord","-n"]
ENTRYPOINT["/startup.sh"]
