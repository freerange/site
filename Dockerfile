FROM ruby:2.2.5

# Get info on latest versions of packages
RUN apt-get update

# Required by execjs via uglifier
RUN apt-get install -y nodejs

# Required to normalize regression spec artefacts
RUN apt-get install -y tidy

# Clean up to reduce disk usage
RUN apt-get clean

# Install version of Bundler specified by BUNDLED WITH in Gemfile.lock
RUN gem install bundler --version 1.14.5

# Specify app directory on container
ENV APP_HOME /app

# Create app directory on container
RUN mkdir $APP_HOME

# Set working directory on container
WORKDIR $APP_HOME

# Install bundled gems to shared volume
ENV BUNDLE_PATH /bundled_gems

# Share project root as app directory on container
ADD . $APP_HOME

# For recap deployment
ENV SSH_AUTH_SOCK /ssh/auth/sock
