FROM alpine:latest
MAINTAINER Yoan AGOSTINI <yoan@naoy.fr>
RUN apk update && apk add --update python3 python3-dev py3-psycopg2 gcc musl-dev postgresql-dev
COPY sqlmap/ /sqlmap/
WORKDIR /sqlmap
ENTRYPOINT ["python3", "sqlmap.py"]
