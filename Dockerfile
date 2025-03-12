FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-A01067716
COPY /target/*.jar oci-microservice-A01067716.jar
COPY /src/main/resources/wallet /oci-microservice-A01067716//wallet
ENV TNS_ADMIN=/oci-microservice-<A01067716>/wallet
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-regomez.jar" ]