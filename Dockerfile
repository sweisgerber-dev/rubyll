FROM ruby:2.4.2

MAINTAINER Sebastian Weisgerber <weisgerber@cispa.saarland>

# otherwise can see some encoding issues:
# https://oncletom.io/2015/docker-encoding/
ENV LANG=C.UTF-8

RUN \
  apt-get update && \
  apt-get install -y \
    libffi-dev \
    libpq-dev \
    ca-certificates \
    subversion \
    imagemagick \
    nodejs \
    npm && \
    ln -s /usr/bin/nodejs /usr/bin/node

ENV RACK_ENV="production" \
    RAILS_ENV="production"

CMD [ "irb" ]
