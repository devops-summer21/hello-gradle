#Este Docker File Construye desde una imagen gradle y un rama personal "hello-dradle" un contenedor especifico "gradle-j9" .#
# Se ejecuta así: "docker build -t gradle/openj9 ." #

#Desde una imagen base de gradle, creamos nuestra imagen#
FROM gradle:7.1.1-jdk11
#Crea un directorio de trabajo#
WORKDIR /opt/hello-gradle
#Copiar en el workdir de gradle#
COPY ./ ./
#Ejecutar el SpringBoot#
CMD ./gradlew bootRun

