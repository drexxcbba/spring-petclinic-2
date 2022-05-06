FROM ubuntu:20.04

RUN apt update && \
    apt install default-jre -y

WORKDIR /app

COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-2.6.0-SNAPSHOT.jar

CMD ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar"]
