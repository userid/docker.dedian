#Debian for CN
#VERSION 0.2
FROM opencv:latest

MAINTAINER "Gao Jie"

ADD app /app/
WORKDIR /app/
USER developer

HEALTHCHECK CMD python3 check_images.py -p test/


VOLUME /data
