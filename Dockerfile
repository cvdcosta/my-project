# Use a stable OpenJDK 11 image
FROM eclipse-temurin:11-jre-alpine

EXPOSE 8080

# Copy any JAR file in build/libs as app.jar
COPY build/libs/*.jar /usr/app/app.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "app.jar"]



