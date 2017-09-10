FROM openjdk:8-jdk-alpine

ADD lib/zipkin-server-1.30.3-exec.jar zipkin.jar

VOLUME /tmp

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /zipkin.jar" ]