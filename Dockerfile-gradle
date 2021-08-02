FROM openjdk:11
WORKDIR /opt/hello-gradle
COPY ./ ./
RUN ./gradlew assemble && RUN rm -rf /root/.gradlew 
CMD java -jar build/libs/demo-0.0.01-SNAPHOT.jar

