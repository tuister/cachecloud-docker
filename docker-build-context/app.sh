#!/bin/bash
#
# start cachecloud
#
# @author tuister
# @version 1.0
# @since 1.0

OLD_JAVA_OPTS=$JAVA_OPTS

JAVA_OPTS=""
if [ 0"$XMS" != "0" ]; then
    JAVA_OPTS=$JAVA_OPTS" -Xms"$XMS
fi

if [ 0"$XMX" != "0" ]; then
    JAVA_OPTS=$JAVA_OPTS" -Xmx"$XMX
fi

if [ 0"$OLD_JAVA_OPTS" != "0" ]; then
    JAVA_OPTS=$JAVA_OPTS" "$OLD_JAVA_OPTS
fi

echo "JAVA VERSION:"
java -version
echo "JAVA_OPTS: "$JAVA_OPTS
java $JAVA_OPTS -jar /cachecloud/cachecloud-web.war $APP_ARGS

