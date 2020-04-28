FROM registry.cn-chengdu.aliyuncs.com/7104475/ubuntu:18.04
COPY  ./go-fastdfs-web-linux-jre   /go-fastdfs-web-linux-jre
COPY  dfs_ui_start.sh    /dfs/dfs_ui_start.sh

ENV INSTALL_DIR  /root/


RUN  chmod 777 -R  /go-fastdfs-web-linux-jre  && \
    #   apt update  -y  && \
    #   apt install iproute2   -y  && \
	#   apt install vim  -y  && \
	#   apt install  crul -y  && \
	  echo   "BUild Time------->>$(date)<<----------" > /root/BUild.log   && \
	  apt-get clean && rm -rf /var/lib/apt/lists/* || true


WORKDIR /dfs
