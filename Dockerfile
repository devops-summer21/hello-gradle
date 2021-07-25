##Amazon correto 11 con al pine y jdk###
FROM amazoncorretto:11-alpine-jdk
     COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./
     CMD java -jar demo-0.0.1-SNAPSHOT.jar
