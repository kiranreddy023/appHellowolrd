FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]