FROM openjdk:11-jre-slim
ARG VERSION

COPY ./target/spring-boot-2-hello-world-${VERSION}.jar /usr/local/lib/app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]