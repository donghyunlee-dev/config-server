FROM openjdk:17
WORKDIR /app
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} microservice-a.jar
ENV TZ=Asia/Seoul
ENTRYPOINT ["java", "-jar", "/app/microservice-a.jar"]