FROM maven:alpine as builder
WORKDIR /app
COPY . /app
RUN mvn package

FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=builder /app/target/docker-java-springboot-hello-world-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
