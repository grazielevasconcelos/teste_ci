FROM ruby:3.1.0-alpine

ENV APP_PATH /var/app
ENV BUNDLE_VERSION 2.1.4
ENV BUNDLE_PATH /usr/local/bundle/gems
ENV TMP_PATH /tmp/
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_PORT 3000

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN apk -U add --no-cache \
    build-base \
    git \
    libxml2-dev \
    libxslt-dev \
    bash \
    tzdata \
    less \
    && rm -rf /var/cache/apk/* \
    && mkdir -p $APP_PATH

RUN gem install bundler --version "$BUNDLE_VERSION" \
    && rm -rf $GEM_HOME/cache/*

WORKDIR $APP_PATH

ENTRYPOINT [ "bundle", "exec" ]
