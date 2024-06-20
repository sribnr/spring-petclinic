# Use a base image with OpenJDK 17 pre-installed
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged application JAR file into the container at the specified path
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic-3.3.0-SNAPSHOT.jar


# Command to run the application
CMD ["sh", "-c", "java -jar spring-petclinic-3.3.0-SNAPSHOT.jar"]