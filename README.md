# cachecloud-docker

> [cachecloud](https://github.com/sohutv/cachecloud)是一个Redis云管理平台：支持Redis多种架构(Standalone、Sentinel、Cluster)高效管理、有效降低大规模redis运维成本，提升资源管控能力和利用率。平台提供快速搭建/迁移，运维管理，弹性伸缩，统计监控，客户端整合接入等功能。

[cachecloud-docker](https://github.com/tuister/cachecloud-docker)可用于将cachecloud打包为Docker镜像

## 依赖

cachecloud需要一个关系数据库（如MySQL）和Redis存储数据

## 配置

cachecloud是一个纯Java应用，采用了Spring Boot作为开发框架

因此，配置cachecloud和配置其他Spring Boot应用的方式是一样的，可以通过系统属性或者环境变量来修改配置项的值

## 构建

```shell
bash build.sh $cachecloud_version
```

> latest cachecloud_version is 2.0

## 文档

[用户手册](./USER_GUIDE.md)
