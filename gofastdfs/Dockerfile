FROM registry.cn-chengdu.aliyuncs.com/7104475/ubuntu:18.04
COPY  ./dfs   /dfs
COPY  dfs_star.sh    /dfs/dfs_star.sh

ENV INSTALL_DIR  /root/


RUN  chmod 777 -R  /dfs  && \
      apt update  -y  && \
      apt install iproute2   -y  && \
	  apt install vim  -y  && \
	  apt install  crul -y  && \
	  echo   "BUild Time------->>$(date)<<----------" > /root/BUild.log   && \
	  apt-get clean && rm -rf /var/lib/apt/lists/* || true


WORKDIR /dfs
