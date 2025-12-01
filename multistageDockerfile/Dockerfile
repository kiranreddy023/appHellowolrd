#stage 1: build the application
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package -DskipTests

# Stage 2: Run the application
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]