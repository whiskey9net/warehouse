FROM  ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  vim \
  iproute2 \
  dnsutils \
  iputils-ping \
  curl \
  wget \
  rsyslog \
  postfix \
  bsd-mailx \
  && rm -rf /var/lib/apt/lists/* 

ADD main.cf /etc/postfix/main.cf
#ADD virtual /etc/postfix/virtual
#RUN postmap /etc/postfix/virtual

ADD init /init
RUN chmod a+x /init
CMD /init

