FROM openjdk:8-jdk-alpine
LABEL AUTHOR "Thuan Doan <thuandv7@gmail.com>"

ENV PORT=8080
ENV ROOT=/opt/my-app
ENV TZ=Asia/Ho_Chi_Minh

WORKDIR $ROOT

COPY target/my-app-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/opt/my-app/app.jar"]
EXPOSE 8080

