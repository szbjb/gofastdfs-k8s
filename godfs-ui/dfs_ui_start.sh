#!/bin/bash
IP=$(hostname -I |xargs -n 1   | grep  $(ip route |head  -n 1 | awk    '{print  $3}'  |  awk  -F  '.'  '{print  $1"."$2"."$3}')) ||IP=$(hostname -I |xargs -n 1   | grep  $(ip route |head  -n 1 | awk    '{print  $3}'  |  awk  -F  '.'  '{print  $1"."$2"."}'))
[ -d /data//go-fastdfs-web-linux-jre ] ||  {
mkdir -pv     /data/
mv -v /go-fastdfs-web-linux-jre/  /data/
cd  /data/go-fastdfs-web-linux-jre/go-fastdfs-web/  && /bin/sh   goFastDfsWeb.sh  start
ps -ef| grep  fastdfs &&  tail    -f   /dev/null
}

#
cd  /data/go-fastdfs-web-linux-jre/go-fastdfs-web/  && /bin/sh   goFastDfsWeb.sh  start

ps -ef| grep  fastdfs &&  tail    -f   /dev/null