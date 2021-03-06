#!/bin/bash
#
# build docker image
#
# @author tuister
# @version 1.0
# @since 1.0

# runtime: oracle-jdk8, maven3

# download
version=$1
url="https://github.com/sohutv/cachecloud/archive/${version}.tar.gz"
wget -P cachecloud $url
mkdir -p cachecloud/cachecloud
tar -zxf cachecloud/${version}.tar.gz -C cachecloud/cachecloud --strip-components 1

# maven build
cd cachecloud/cachecloud
mvn clean package -DskipTests=true
cp cachecloud-web/target/*.war ../../docker-build-context

# docker build
cd ../..
docker build -t tuister/cachecloud:$version docker-build-context
docker images tuister/cachecloud:$version
docker push tuister/cachecloud:$version

