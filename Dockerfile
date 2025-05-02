# Dockerfile
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . /app
RUN ./mvnw clean install -DskipTests
CMD ["java", "-jar", "target/auth-server-0.0.1-SNAPSHOT.jar"]
