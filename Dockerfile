# Use a base image with Java
FROM openjdk:11-jre-slim

# Add the WAR file to the container
COPY target/*.war /app/app.war

# Set the entry point to run the WAR file using java
ENTRYPOINT ["java", "-jar", "/app/app.war"]
