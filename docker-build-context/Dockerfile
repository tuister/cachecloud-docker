FROM openjdk:8-jre

LABEL maintainer="tuister@163.com" runtime="openjdk:8-jre"

ENV cachecloud.primary.url="jdbc:mysql://127.0.0.1:3306/cachecloud-open?useUnicode=true&characterEncoding=UTF8&autoReconnect=true&connectTimeout=3000&socketTimeout=10000" \
    cachecloud.primary.user="cachecloud-open" \
    cachecloud.primary.password="cachecloud-open" \
    cachecloud.primary.initialPoolSize="1" \
    cachecloud.primary.maxPoolSize="3" \
    cachecloud.redis.main.host="127.0.0.1" \
    cachecloud.redis.main.port="6379" \
    cachecloud.redis.main.password="" \
    XMS="512m" XMX="1024m"

RUN mkdir /cachecloud
COPY cachecloud-web.war /cachecloud/
COPY app.sh /cachecloud/

EXPOSE 8080
WORKDIR /cachecloud
ENTRYPOINT [ "/bin/bash", "-c", "/cachecloud/app.sh" ]
