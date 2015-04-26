FROM resin/rpi-raspbian:wheezy
MAINTAINER Lucas Käldström <lucas.kaldstrom@hotmail.co.uk>

# ENV DEBIAN_FRONTEND noninteractive
# ENV HOME /root


RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends supervisor \
        sudo nano \
        net-tools \
        lxde x11vnc xvfb \
        gtk2-engines-murrine

RUN apt-get install -y xrdp \ 
    && apt-get autoclean \
    && apt-get autoremove \
#   && rm -rf /var/lib/apt/lists/*

EXPOSE 6080
EXPOSE 5900
EXPOSE 3389

COPY supervisord.conf /
COPY startup.sh /
RUN useradd --create-home --shell /bin/bash --user-group --groups adm,sudo pi
RUN echo "pi:raspberry" | chpasswd

# Define working directory.
# VOLUME ["/home/ubuntu"]

WORKDIR /
ENTRYPOINT ["/startup.sh"]
