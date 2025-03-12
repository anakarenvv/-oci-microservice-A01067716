FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice
COPY /target/*.jar oci-microservice.jar
COPY /src/main/resources/wallet /oci-microservice/wallet
ENV TNS_ADMIN=/oci-microservice/wallet
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-regomez.jar" ]