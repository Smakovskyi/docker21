FROM openjdk:alpine
ADD target/spring-boot-docker-0.1.0.jar app.jar
ENV JAVA_OPTS=""
#Comment
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
