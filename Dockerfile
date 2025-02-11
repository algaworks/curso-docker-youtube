FROM alpine:latest
RUN apk add --no-cache openjdk17-jre
WORKDIR /app
ENV JAR_NAME=algatransito-api.jar
COPY target/$JAR_NAME $JAR_NAME
CMD java -jar $JAR_NAME