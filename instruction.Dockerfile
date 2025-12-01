FROM nginx:latest
WORKDIR /app
RUN apt-get update
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar
ADD Jenkinsfile /app/Jenkinsfile
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]