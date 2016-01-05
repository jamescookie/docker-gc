# PMP Garbage Collection
FROM spotify/docker-gc:latest

MAINTAINER james.cookie <docker@jamescookie.com>
LABEL com.jamescookie.version=1.0.0

ENV CRON_LOCATION /etc/periodic/hourly/docker-gc-cron

ADD data/cron ${CRON_LOCATION}
RUN chmod +x /docker-gc && chmod a+x ${CRON_LOCATION} && mkdir /logs/

CMD ["/bin/sh", "-c", "/usr/sbin/crond && echo \"[$(date)] Docker GC initialised.\" > /logs/docker-gc.log && .${CRON_LOCATION} && tail -f /logs/docker-gc.log"]
