#
# Build stage
#
FROM maven:3.8.6-openjdk-11-slim AS build
COPY ./src /home/app/src
COPY ./pom.xml /home/app

#RUN mvn -f /home/app/pom.xml test

RUN mvn -f /home/app/pom.xml clean install

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar /usr/local/lib/app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]