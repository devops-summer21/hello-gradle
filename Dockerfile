#Imagen Gradle con copia de proyecto actual Hello-Gradle
FROM gradle:7.1.1-jdk11
#EXPOSE 8080
WORKDIR /opt/hello-gradle/
COPY /build/libs/ ./
#ENV PATH "$PATH:/var/scr/app"
CMD java -jar demo-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","./gradlew bootRun"]

FROM mariadb:10.6.3-focal
RUN apt-get update -y
