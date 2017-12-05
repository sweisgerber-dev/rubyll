FROM ruby:2.4.2-stretch

MAINTAINER Sebastian Weisgerber <weisgerber@cispa.saarland>

# otherwise can see some encoding issues:
# https://oncletom.io/2015/docker-encoding/
ENV LANG=C.UTF-8

RUN \
  apt-get update &&\
  curl -sL http://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - &&\
  echo "deb http://deb.nodesource.com/node_8.x stretch main" > /etc/apt/sources.list.d/nodesource.list &&\
  echo "deb-src http://deb.nodesource.com/node_8.x stretch main" >> /etc/apt/sources.list.d/nodesource.list &&\
  apt-get update && \
  apt-get install -y \
    build-essential \
    curl \
    libffi-dev \
    libpq-dev \
    ca-certificates \
    subversion \
    imagemagick \
    python3 \
    nodejs \
    npm

    # ln -s /usr/bin/nodejs /usr/bin/node



ENV RACK_ENV="production" \
    RAILS_ENV="production"

CMD [ "irb" ]
