#Imagen Gradle con copia de proyecto actual Hello-Gradle
FROM gradle:7.1.1-jdk11
EXPOSE 8080
WORKDIR /opt/hello-gradle
COPY ./ ./
#ENV PATH "$PATH:/var/scr/app"
CMD ./gradlew bootRun
#ENTRYPOINT ["java","./gradlew bootRun"]