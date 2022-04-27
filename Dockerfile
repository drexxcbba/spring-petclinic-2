FROM openjdk:11
LABEL maintainer="villarroel24kyle@gmail.com"  
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /usr/src/spring-petclinic-2.6.0-SNAPSHOT.jar
CMD ["java","-jar","/usr/src/spring-petclinic-2.6.0-SNAPSHOT.jar"]
