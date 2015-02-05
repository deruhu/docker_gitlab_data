FROM ubuntu
MAINTAINER sebastian.noack@fh-kiel.de

RUN adduser --uid 1000 git

RUN mkdir -p /home/git/data \
    && chown -R git:git /home/git/data 

VOLUME ["/home/git/data"]

RUN mkdir -p -m 0777 /var/log/gitlab

VOLUME ["/var/log/gitlab"]

CMD echo "gitlab data container (providing /var/log/gitlab and /home/git/data)"
