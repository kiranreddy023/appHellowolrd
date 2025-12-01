FROM alpine:latest
RUN apk add --no-cache openjdk17
WORKDIR /app
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
ENTRYPOINT ["echo", "Devops Learning by Kiran"]