# Docker 图形化管理工具

## Portainer

Docker图形化管理工具之Portainer-Hello,World!-51CTO博客
http://blog.51cto.com/bovin/2170723



Docker(七)----搭建Portainer可视化界面 - fendo - CSDN博客
https://blog.csdn.net/u011781521/article/details/80469804





portainer/portainer - Docker Hub
https://hub.docker.com/r/portainer/portainer



```
docker run -d -p 5051:9000 --restart=always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
```



## Docker UI

abh1nav/dockerui - Docker Hub
https://hub.docker.com/r/abh1nav/dockerui



```
docker run -d -p 5051:9000 -v /var/run/docker.sock:/docker.sock --name dockerui abh1nav/dockerui:latest -e="/docker.sock"
```



## shipyard

Docker可视化管理工具shipyard - xcbeyond|疯狂源自梦想，技术成就辉煌 - CSDN博客
https://blog.csdn.net/xcbeyond/article/details/82796667