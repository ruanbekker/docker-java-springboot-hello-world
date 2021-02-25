FROM maven:3.6.3-openjdk-11 as builder
WORKDIR /app
COPY . /app
RUN mvn package

FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=/app/target/*.jar
WORKDIR /app
COPY --from=builder $JAR_FILE /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
