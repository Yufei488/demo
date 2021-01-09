FROM openjdk:8

COPY ../*.jar /app.jar

EXPOSE 8001

ENTRYPOINT ["ls","../","&&","java","-jar","/app.jar"]