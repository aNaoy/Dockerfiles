FROM ruby:2.4-alpine
MAINTAINER Yoan AGOSTINI <yoan@naoy.fr>
RUN apk add --update libcurl
RUN apk add --update build-base
COPY joomlavs/ /joomlavs/
WORKDIR /joomlavs
RUN bundle install
ENTRYPOINT ["ruby","joomlavs.rb"]
