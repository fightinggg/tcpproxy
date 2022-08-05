# tcpproxy
tcpproxy 是一款TCP端口转发工具，可以把某个IP的某个端口，映射到宿主机上的端口

# 使用场景1
我有一台云服务器，该云服务器连接了某个内网，我自己身边的电脑没办法访问内网，这时候，可以通过这个工具把内网某个IP的某个端口，映射到我的云服务器上，我就可以通过访问这个云服务器的端口达到访问内网的效果。

```shell
$ docker run -it --rm -e "proxyurl=【内网IP】:【内网端口】" -p 【云服务器端口】:80  fightinggg/tcpproxy
```

# 使用场景2
我有一个正在运行的docker容器，但是他没有设置暴露端口，我希望把容器的端口暴露到宿主机上

```shell
$ docker run -it --rm -e "proxyurl=【容器名】:【容器端口】" -p 【云服务器端口】:80  --link 【容器名】:【容器名】  fightinggg/tcpproxy
```


# USE
```shell
$ docker run -it --rm -e "proxyurl=localhost:8080" -p 12345:80  fightinggg/tcpproxy
```
