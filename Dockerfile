FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG SOURCE_PATH
COPY $SOURCE_PATH integration.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/integration.jar"]
