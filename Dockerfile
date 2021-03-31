FROM ubuntu:bionic

ENV BIND_USER=bind \
    DATA_DIR=/data

RUN apt-get update \
  && apt-get install bind9 bind9utils bind9-doc -y \ 
  && apt-get install dnsutils -y \
  && apt-get install vim -y \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  && rm -rf /var/lib/apt/lists/* 

#arquivos de configuração
COPY entrypoint.sh /sbin/entrypoint.sh 

COPY create-key.sh /opt/create-key.sh

COPY named.conf /etc/bind/named.conf

RUN chmod 755 /sbin/entrypoint.sh /opt/create-key.sh 

EXPOSE  53/udp 53/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]

CMD ["/usr/sbin/named"]
