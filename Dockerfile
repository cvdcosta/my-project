# Use a valid OpenJDK 11 image from Eclipse Temurin
FROM eclipse-temurin:11-jre-alpine

# Expose the port your app will run on
EXPOSE 8080

# Copy the JAR built by Gradle into the container
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Set working directory
WORKDIR /usr/app

# Run the application
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]


