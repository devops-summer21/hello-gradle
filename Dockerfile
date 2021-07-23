# Build stage
FROM gradle:7.1.1-jdk11 AS base
#EXPOSE 8080
WORKDIR /opt/hello-gradle/
COPY ./ ./
RUN ./gradlew assemble \
 && rm -rf /root/.gradle
CMD java -jar demo-0.0.1-SNAPSHOT.jar
#Build 
FROM mariadb:10.6.3-focal
RUN apt-get update -y
WORKDIR /var/lib/mysql ./
COPY --from=base /opt/hello-gradle/build/libs/demo-0.0.1-SNAPSHOT.jar ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar