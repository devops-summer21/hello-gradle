#Imagen Gradle con copia de proyecto actual Hello-Gradle
FROM openjdk:11
COPY . /var/scr/app
ENV PATH "$PATH:/var/scr/app"
WORKDIR /var/scr/app
RUN gradlew bootRun
#ENTRYPOINT ["./gradlew bootRun"]