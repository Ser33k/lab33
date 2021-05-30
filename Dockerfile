FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
FROM gradle:6.7.1-jdk8 AS build
USER root
RUN mkdir app
COPY src/ /app/src/
COPY build.gradle /app/
COPY settings.gradle /app/
WORKDIR /app
RUN gradle bootJar

FROM openjdk:8-jdk-alpine
COPY --from=build /app/build/libs/lab3-0.0.1-SNAPSHOT.jar lab3-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/lab3-0.0.1-SNAPSHOT.jar"]

#FROM postgres
#COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d