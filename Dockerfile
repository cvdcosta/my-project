# Use a valid OpenJDK 11 JRE image
FROM openjdk:11-jre-slim-bullseye

# Expose the port your app will run on
EXPOSE 8080

# Copy your built jar into the container
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Set the working directory
WORKDIR /usr/app

# Run the jar
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
