FROM openjdk:8-jre-alpine

EXPOSE 8080
FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY build/libs/*-boot.jar /usr/app/app.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "app.jar"]

# COPY ./build/libs/my-app-1.0-SNAPSHOT-boot.jar /usr/app/
# WORKDIR /usr/app

# ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT-boot.jar"]

# COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
# WORKDIR /usr/app

# ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
