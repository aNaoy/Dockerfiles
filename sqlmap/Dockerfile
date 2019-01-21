FROM alpine:3.8
MAINTAINER Yoan AGOSTINI <yoan@naoy.fr>
RUN apk add --update python
COPY sqlmap/ /sqlmap/
WORKDIR /sqlmap
ENTRYPOINT ["python", "sqlmap.py"]
