# Version 0.1 
# test vi on Daocloud on Feb. 4

# 基础镜像
FROM ubuntu:lastest

#维护者信息
MAINTAINER enjoyme@126.com

#镜像操作命令
RUN apt-get -yqq update && apt-get install -yqq apache2 && apt-get clean

# 容器启动命令
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
