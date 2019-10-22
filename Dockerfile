FROM debian:9.8

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y curl unzip \
  && rm -rf /var/lib/apt/lists/*

ADD ./bin/nomad /usr/bin/nomad


COPY server.hcl /etc/nomad/server.hcl
COPY common.hcl /etc/nomad/common.hcl
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod a+x /docker-entrypoint.sh

VOLUME ["/opt/nomad"]
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["start"]
