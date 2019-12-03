#!/bin/bash

# clone the last version of sqlmap repo
git clone https://github.com/sqlmapproject/sqlmap.git

# remove .git as it is big and unuseful in a immutable archtecture
rm -rf ./sqlmap/.git/

# create Dockerfile
cat > Dockerfile << _EOF_
FROM alpine:latest
MAINTAINER Yoan AGOSTINI <yoan@naoy.fr>
RUN apk update && apk add --update python python-dev gcc musl-dev postgresql-dev
RUN pip install psycopg2
COPY sqlmap/ /sqlmap/
WORKDIR /sqlmap
ENTRYPOINT ["python", "sqlmap.py"]
_EOF_

# build the image
docker build -t naoy/sqlmap:latest .
