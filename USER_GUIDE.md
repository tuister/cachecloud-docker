# Cachecloud for docker

## 快速开始

**Cachecloud使用关系数据库（通常是mysql）和redis存储数据，启动容器前请根据你的运行环境进行配置,**

数据库启动后还需要对其进行初始化，初始化脚本位于[https://github.com/tuister/cachecloud/blob/main/cachecloud-web/sql/2.0.sql](https://github.com/tuister/cachecloud/blob/main/cachecloud-web/sql/2.0.sql)



```shell
docker run -d --name cachecloud \
    -p 8080:8080 \
    -e cachecloud.primary.url="jdbc:mysql://127.0.0.1:3306/cachecloud-open?useUnicode=true&characterEncoding=UTF8&autoReconnect=true&connectTimeout=3000&socketTimeout=10000" \
    -e cachecloud.primary.user="cachecloud-open" \
    -e cachecloud.primary.password="cachecloud-open" \
    -e cachecloud.redis.main.host="127.0.0.1" \
    -e cachecloud.redis.main.port="6379" \
    tuister/cachecloud:2.0
```

> mysql和redis都有官方的Docker镜像

## 环境变量

> cachecloud使用Spring Boot作为开发框架，因此可以通过环境变量对其进行配置，所有的环境变量可以参阅[application.yml](https://github.com/tuister/cachecloud/blob/main/cachecloud-web/src/main/resources/application.yml)以及[application-local.yml](https://github.com/tuister/cachecloud/blob/main/cachecloud-web/src/main/resources/application-local.yml)

以下对一些比较重要的环境变量进行说明

```text
XMS="512m"
设置JVM的初始堆大小为512m

XMX="1024m"
设置JVM的最大堆大小为1024m

cachecloud.primary.url="jdbc:mysql://127.0.0.1:3306/cachecloud-open?useUnicode=true&characterEncoding=UTF8&autoReconnect=true&connectTimeout=3000&socketTimeout=10000" \
设置数据库的地址（这里使用的是mysql）

cachecloud.primary.user="cachecloud-open"
设置数据库的用户名

cachecloud.primary.password="cachecloud-open"
设置数据库的密码

cachecloud.primary.initialPoolSize="1"
设置数据库连接池的初始大小

cachecloud.primary.maxPoolSize="3"
设置数据库连接池的初始大小

cachecloud.redis.main.host="127.0.0.1"
设置redis的主机地址

cachecloud.redis.main.port="6379"
设置redis的端口号

cachecloud.redis.main.password=""
设置redis的密码为空（即不需要密码）
```
