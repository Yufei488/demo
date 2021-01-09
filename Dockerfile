FROM openjdk:8

RUN pwd

COPY target/*.jar /app.jar

EXPOSE 8001

ENTRYPOINT ["java","-jar","/app.jar"]