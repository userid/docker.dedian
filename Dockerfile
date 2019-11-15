#Debian for CN
#VERSION 0.2
FROM debian:stretch
MAINTAINER "Gao Jie"


ARG DEBIAN_FRONTEND=noninteractive


RUN echo "deb http://mirrors.aliyun.com/debian/"   stretch  main > /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get install -y apt-transport-https

RUN echo "deb https://mirrors.aliyun.com/debian/   stretch  main non-free contrib" > /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/debian/   stretch-updates main" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/debian/   stretch-backports main" >> /etc/apt/sources.list


RUN apt-get update -y

RUN apt-get install apt-utils  dialog -y
RUN apt-get install libterm-readline-perl-perl -y
RUN apt-get install locales tzdata  -y
RUN echo "zh_CN.UTF-8 UTF-8" > /etc/locale.gen
RUN update-locale
RUN locale-gen
RUN echo "LANG=zh_CN.UTF-8" > /etc/default/locale
RUN cp /usr/share/zoneinfo/posix/Asia/Chongqing /etc/localtime
RUN echo "Asia/Chongqing" > /etc/timezone

RUN apt-get install procps -y
