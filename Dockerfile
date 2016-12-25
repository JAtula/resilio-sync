FROM ubuntu
MAINTAINER Juhani Atula <juhani.atula@tahtogroup.fi>
LABEL resilio.version="2.4.4"

ADD https://download-cdn.resilio.com/2.4.4/linux-x64/resilio-sync_x64.tar.gz /tmp/sync.tgz
RUN tar -xf /tmp/sync.tgz -C /usr/bin rslsync && rm -f /tmp/sync.tgz

ADD start-sync /usr/bin/start-sync
RUN mkdir -p /sync/.sync && \
mkdir -p /var/run/sync && \
mkdir -p /data && \ 
chmod +x /usr/bin/start-sync
#COPY run_sync /usr/bin/

EXPOSE 8888
EXPOSE 55555

#VOLUME /mnt/sync

ENTRYPOINT ["start-sync"]
CMD ["--config", "/sync/sync.conf"]
