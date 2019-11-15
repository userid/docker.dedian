#Debian for CN
#VERSION 0.2
FROM registry.cn-beijing.aliyuncs.com/userid/opencv:latest

MAINTAINER "Gao Jie"

ADD app /app/
WORKDIR /app/
USER developer

HEALTHCHECK CMD python3 check_images.py -p test/


VOLUME /data
