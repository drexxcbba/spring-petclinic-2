FROM openjdk:11-jdk

WORKDIR /app

COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-2.6.0-SNAPSHOT.jar

CMD ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar"]
