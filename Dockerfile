FROM 172.30.1.1:5000/myproject/openjdk:8-jdk-alpine

ADD lib/zipkin-server-1.30.3-exec.jar zipkin.jar

VOLUME /tmp

ENV JAVA_OPTS=""
EXPOSE 9411

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /zipkin.jar" ]