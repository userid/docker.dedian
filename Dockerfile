#Debian for CN
#VERSION 0.1
FROM debian
MAINTAINER "Gao Jie"


RUN echo "deb http://mirrors.aliyun.com/debian  stable  main non-free contrib" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/debian   wheezy-updates main" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install apt-utils -y
RUN apt-get install locales tzdata  -y
RUN echo "zh_CN.UTF-8 UTF-8" > /etc/locale.gen
RUN update-locale
RUN locale-gen
RUN echo "LANG=zh_CN.UTF-8" > /etc/default/locale
RUN cp /usr/share/zoneinfo/posix/Asia/Chongqing /etc/localtime
RUN echo "Asia/Chongqing" > /etc/timezone
