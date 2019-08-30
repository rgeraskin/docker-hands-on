FROM ubuntu:xenial
COPY gitsync /usr/local/bin/
RUN apt-get update && apt-get install --no-install-recommends -y cron git openssh-client
WORKDIR /root/
COPY config id_rsa id_rsa.pub .ssh/
RUN mkdir /git_mirror
WORKDIR /git_mirror/
CMD crontab /etc/cron.d/* && cron -f