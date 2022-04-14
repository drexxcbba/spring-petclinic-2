FROM openjdk:11
COPY ./target/spring-petclinic-2.6.0-SNAPSHOT.jar /usr/src/myapp/spring-petclinic-2.6.0-SNAPSHOT.jar
WORKDIR /usr/src/myapp
CMD ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar"]
