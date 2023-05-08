FROM ruby:2-slim-bullseye

MAINTAINER Sebastian Weisgerber <weisgerber@cispa.de>

ARG DEBIAN_FRONTEND="noninteractive"

# otherwise can see some encoding issues:
# https://oncletom.io/2015/docker-encoding/
ENV LANG=C.UTF-8
ENV RACK_ENV="production" \
    RAILS_ENV="production"
# environment settings
RUN apt-get update \
 && apt-get install -y \
            build-essential \
            curl \
 && curl -sL http://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
 && echo "deb http://deb.nodesource.com/node_18.x bullseye main" > /etc/apt/sources.list.d/nodesource.list \
 && echo "deb-src http://deb.nodesource.com/node_18.x bullseye main" >> /etc/apt/sources.list.d/nodesource.list \
 && apt-get update \
 && apt-get install -y \
            build-essential \
            curl \
            lftp \
            libffi-dev \
            libpq-dev \
            ca-certificates \
            subversion \
            imagemagick \
            python3 \
            virtualenv \
            python3-pip \
            nodejs \
  && echo "**** cleanup ****" \
  && apt-get -y autoremove \
  && apt-get clean  \
  && rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /var/log/* \
    /usr/share/man

CMD [ "irb" ]
