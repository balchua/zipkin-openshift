#FROM 172.30.1.1:5000/myproject/openjdk:8-jdk-alpine
FROM openjdk:8

ADD lib/zipkin-server-2.14.0-exec.jar zipkin.jar

VOLUME /tmp

ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Xms512m -Xmx512m"

EXPOSE 9411

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /zipkin.jar --logging.level.zipkin=DEBUG --logging.level.zipkin2=DEBUG " ]