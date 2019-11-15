#Debian for CN
#VERSION 0.2
FROM registry.cn-beijing.aliyuncs.com/userid/opencv:latest

MAINTAINER "Gao Jie"

ADD app /app/
RUN wget https://github.com/userid/docker.dedian/raw/master/instances/open_nsfw/app/model/nsfw.model -O /app/model/nsfw.model
RUN chown developer -R /app/




WORKDIR /app/
USER developer

HEALTHCHECK CMD python3 check_images.py -p test/


VOLUME /data
