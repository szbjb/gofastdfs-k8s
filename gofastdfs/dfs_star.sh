#!/bin/bash
IP=$(hostname -I |xargs -n 1   | grep  $(ip route |head  -n 1 | awk    '{print  $3}'  |  awk  -F  '.'  '{print  $1"."$2"."$3}')) ||IP=$(hostname -I |xargs -n 1   | grep  $(ip route |head  -n 1 | awk    '{print  $3}'  |  awk  -F  '.'  '{print  $1"."$2"."}'))
[  -f  /config/cfg.json.bak ] &&  cat  /config/cfg.json.bak > /dfs/conf/cfg.json.bak
[  -f  /dfs/dfs_star.sh ] ||  \cp   -rv /opt/dfs/*  /dfs
cat  /dfs/conf/cfg.json.bak  >  /dfs/conf/cfg.json
sed  "s/DFSIP/$IP/"  /dfs/conf/cfg.json   -i
cd  /dfs/  &&  ./fileserver
