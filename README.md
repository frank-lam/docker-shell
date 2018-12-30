# 基础服务安装

## 1. docker

**docker一件脚本安装**

```
curl -sSL https://get.docker.com | sh
```

**docker安装（centos为例）**

1. 安装依赖包

```shell
$ sudo yum install -y yum-utils  device-mapper-persistent-data  lvm2
```

2. 设置稳定版仓库

```shell
$ sudo yum-config-manager   --add-repo  https://download.docker.com/linux/centos/docker-ce.repo
```

3. 安装

```shell
//安装最新版本
$ sudo yum install docker-ce
```

4. Docker 镜像加速器

对于使用 [systemd](https://www.freedesktop.org/wiki/Software/systemd/) 的系统，请在 `/etc/docker/daemon.json` 中写入如下内容（如果文件不存在请新建该文件）

```json
{
  "registry-mirrors": [
    "https://registry.docker-cn.com"
  ]
}
```

> 注意，一定要保证该文件符合 json 规范，否则 Docker 将不能启动。

之后重新启动服务。

```
$ sudo systemctl daemon-reload
$ sudo systemctl restart docker
```

5. 检查加速器是否生效

配置加速器之后，如果拉取镜像仍然十分缓慢，请手动检查加速器配置是否生效，在命令行执行 `docker info`，如果从结果中看到了如下内容，说明配置成功。

```
Registry Mirrors:
 https://registry.docker-cn.com/
```

- 参考资料：
  - [CentOS环境Docker安装教程（官方推荐的docker三种方式安装) - 胡海超 - 博客园](http://www.cnblogs.com/cblogs/p/9333368.html)
  - [解决docker启动报错“Error starting daemon: SELinux is not supported with the overlay2 graph driver on this](https://blog.csdn.net/haoding205/article/details/82492263) 



## 2. docker-compose

1. 首先检查linux有没有安装python-pip包，终端执行 pip -V

```
pip -V
```

2. 没有python-pip包就执行命令

```
yum -y install epel-release
```

3. 执行成功之后，再次执行

```
yum -y install python-pip
```

4. 对安装好的pip进行升级

```
pip install --upgrade pip
```

至此，pip安装好了，执行pip -V 再次检查pip环境。

```
pip -V
```

5. 终端执行安装命令

```
pip install docker-compose
```

6. 检查docker-compose 安装

```
docker-compose -version
```



## 3. nginx





# 开箱即用Docker容器

## MySQL

### 基础镜像

https://hub.docker.com/_/mysql

### 启动方式

一键搭建 MySQL 服务，端口：3306，账号：root/123456

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

3. docker run 命令

```
docker run --name mysql -v /my/custom:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5.6
```

一键脚本获取

```

```



## Redis

> 一键搭建 Redis 服务，端口：6379，密码：123456

切换到目录（在 `/usr/local/docker` 下创建自己的应用目录文件）

```shell
cd /usr/local/docker/redis
```

执行脚本

```shell
curl https://raw.githubusercontent.com/frank-lam/docker-shell/master/redis/run-redis.sh  | sh
```



## lanproxy

### 服务脚本拉取（start,status,stop,restart）

```shell
curl https://raw.githubusercontent.com/frank-lam/docker-shell/master/lanproxy/upshell.sh | sh
```



### 一件脚本安装





### 开机启动



### 定时任务

```shell
* * * * * root sh /usr/local/lanproxy/start.sh
echo "* * * * * root sh /usr/local/lanproxy/start.sh" >> /etc/crontab
```

