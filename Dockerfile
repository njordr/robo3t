FROM ubuntu:18.04
MAINTAINER giovanni.colapinto@gmail.com

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y \
    libgl-dev \
    qt5dxcb-plugin

ADD https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz /opt/robo3t.tar.gz
RUN cd /opt/ && mkdir robo3t && tar -C /opt/robo3t --strip-components 1 -xzf robo3t.tar.gz && rm robo3t.tar.gz && ls /opt/robo3t

CMD /opt/robo3t/bin/robo3t

