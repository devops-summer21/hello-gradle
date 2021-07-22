FROM openjdk:11
WORKDIR /opt/hello-gradle
COPY ./ ./
CMD ./gradlew bootRun
