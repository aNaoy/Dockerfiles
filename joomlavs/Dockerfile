# Run Joomla Vulnerability Scanner in a Docker Container
#
#
# A black box, Ruby powered, Joomla vulnerability scanner

FROM ruby:2.4-alpine

MAINTAINER Yoan AGOSTINI <yoan@naoy.fr>

# ENV DEBIAN_FRONTEND noninteractive
RUN apk add --update libcurl
RUN apk add --update build-base
COPY joomlavs/ /joomlavs/
WORKDIR /joomlavs
RUN bundle install
ENTRYPOINT ["ruby","joomlavs.rb"]
