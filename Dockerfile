FROM eclipse-temurin:11-jre-alpine

# Set working directory
WORKDIR /usr/app

# Copy the JAR built by Gradle
COPY build/libs/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]





