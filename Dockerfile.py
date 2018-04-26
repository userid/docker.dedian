FROM registry.cn-beijing.aliyuncs.com/userid/debian
MAINTAINER "Gao Jie"

RUN apt-get install python-pip vim -y
RUN echo "[global]\nindex-url = https://mirrors.ustc.edu.cn/pypi/web/simple\n" > /etc/pip.conf
RUN echo "let skip_defaults_vim=1\nset mouse=\nsyntax on" >> /etc/vim/vimrc

RUN pip install  flask gevent
RUN pip install  redis grpcio
#RUN pip install  gensim scipy sklearn tensorflow-serving-api expiringdict
RUN pip install  uwsgi gunicorn

RUN apt-get install bpython python-mysqldb python-memcache -y
