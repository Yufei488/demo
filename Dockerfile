FROM openjdk:8

COPY target/*.jar /app.jar

EXPOSE 8001

CMD echo "jenkin_demo创建完毕!"

ENTRYPOINT ["java","-jar","/app.jar"]