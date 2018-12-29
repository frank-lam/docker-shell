# docker-shell

## MySQL

> 一键搭建 MySQL 服务，端口：3306，账号：root/123456

切换到目录（在 `/usr/local/docker` 下创建自己的应用目录文件）

```shell
cd /usr/local/docker/mysql
```

1. 根据当前文件路径生成 docker-compose.yml 文件

```shell
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/mysql/up-dk-compose.sh; sh up-dk-compose.sh;
docker-compose up -d
```

2. 标准版 docker-compose.yml 文件

```shell
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/mysql/docker-compose.yml ; docker-compose up -d
```



## Redis

> 一键搭建 Redis 服务，端口：6379，密码：123456

切换到目录（在 `/usr/local/docker` 下创建自己的应用目录文件）

```
cd /usr/local/docker/redis
```

执行脚本

```
curl https://raw.githubusercontent.com/frank-lam/docker-shell/master/redis/run-redis.sh  | sh
```



## lanproxy

```shell
* * * * * root sh /usr/local/lanproxy/start.sh
echo "* * * * * root sh /usr/local/lanproxy/start.sh" >> /etc/crontab
```

