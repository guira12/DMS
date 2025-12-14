# STAGE 1: Build Spring app as .jar file using all the JDK
FROM eclipse-temurin:21-jdk AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
COPY mvnw ./mvnw
COPY .mvn ./.mvn
# Build the Spring Boot application as .jar
RUN ./mvnw -q -e -DskipTests package

# STAGE 2: preparing Runtime with JRE only (light weight image)
FROM eclipse-temurin:21-jre

#RUN apt-get update && apt-get install --no-install-recommends -y \
#	bash \
#	net-tools \
#	iputils-ping

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

EXPOSE 9005

ENTRYPOINT ["java","-jar","app.jar"]

