#!/bin/bash

# clone the last version of sqlmap repo
git clone https://github.com/rastating/joomlavs.git

# remove .git as it is big and unuseful in a immutable archtecture
rm -rf ./joomlavs/.git/

# create Dockerfile
cat > Dockerfile << _EOF_
FROM ruby:2.4-alpine
MAINTAINER Yoan AGOSTINI <yoan@naoy.fr>
RUN apk add --update libcurl
RUN apk add --update build-base
COPY joomlavs/ /joomlavs/
WORKDIR /joomlavs
RUN bundle install
ENTRYPOINT ["ruby","joomlavs.rb"]
_EOF_

# build the image
docker build -t naoy/joomlavs:latest .
