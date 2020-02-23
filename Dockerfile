# VERSION 0.0.1
FROM openjdk:8-jdk-alpine
VOLUME /temp
EXPOSE 8080
ARG JAR_FILE=target/spring-boot-helloworld-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
