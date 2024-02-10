FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/example20-0.0.1-SNAPSHOT.jar example20.jar
EXPOSE 2000
ENTRYPOINT ["java","-jar","example20.jar"]
