FROM ruby:3.4.1-alpine

ENV APP_PATH /var/app
ENV BUNDLE_VERSION 2.3.1
ENV BUNDLE_PATH /usr/local/bundle/gems
ENV TMP_PATH /tmp/
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_PORT 3000

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    postgresql-client \
    libxml2-dev \
    libxslt-dev \
    nodejs \
    npm \
    imagemagick \
    tzdata \
    less \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p $APP_PATH

RUN gem install bundler --version "$BUNDLE_VERSION" \
    && rm -rf $GEM_HOME/cache/*

# navigate to app directory
WORKDIR $APP_PATH

EXPOSE $RAILS_PORT

ENTRYPOINT [ "bundle", "exec" ]