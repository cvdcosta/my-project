FROM eclipse-temurin:11-jre-alpine

EXPOSE 8080

# Copy ANY jar produced by Gradle
COPY build/libs/*.jar /usr/app/app.jar

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "app.jar"]




