FROM maven:3.8.5-jdk-11

COPY ./ ./

RUN mvn clean package

CMD ["java","-jar","target/spring-petclinic-2.6.0-SNAPSHOT.jar"]
