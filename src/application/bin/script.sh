#!/usr/bin/env bash
##
##
set -e

JAVA_VERSION=$(java -version)



java -jar   /opt/devops/lib/application.jar -Xms512m -Xmx1024m \
            -XX:MetaspaceSize=64m -XX:MaxMetaspaceSize=128m -Xss512k \
            -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/var/log/devops \
            -XX:+PrintGCDateStamps -verbose:gc -XX:+PrintGCDetails -Xloggc:/var/log/devops/gc.log \
            -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=10 -XX:GCLogFileSize=100M  \
            --spring.config.location=/opt/devops/conf/application.properties