# Docker Alpine Python

## 版本说明

* [3.9 , 3.9.16](https://github.com/seffeng/docker-python/tree/3.9)

## 常用命令：

```sh
# 拉取镜像
$ docker pull seffeng/python

# 运行
$ docker run --name python-test -id -v <data-dir>:/opt/websrv/data/wwwroot -v <tmp-dir>:/opt/websrv/tmp -v <log-dir>:/opt/websrv/logs seffeng/python

# 查看正在运行的容器
$ docker ps

# 停止
$ docker stop [CONTAINER ID | NAMES]

# 启动
$ docker start [CONTAINER ID | NAMES]

# 进入终端
$ docker exec -it [CONTAINER ID | NAMES] sh

# 删除容器
$ docker rm [CONTAINER ID | NAMES]

# 镜像列表查看
$ docker images

# 删除镜像
$ docker rmi [IMAGE ID]
```

## 备注

```shell
# 建议容器之间使用网络互通
## 1、添加网络[已存在则跳过此步骤]
$ docker network create network-01

## 运行容器增加 --network network-01 --network-alias [name-net-alias]
$ docker run --name python-alias1 --network network-01 --network-alias python-alias1 -d -v /opt/websrv/data/wwwroot:/opt/websrv/data/wwwroot -v /opt/websrv/tmp:/opt/websrv/tmp -v /opt/websrv/logs/python:/opt/websrv/logs seffeng/python
```