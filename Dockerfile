ARG JDK_VERSION=18-oraclelinux8

FROM openjdk:${JDK_VERSION}
LABEL maintainer="Dimas Maryanto <software.dimas_m@icloud.com>"
WORKDIR /var/springboot/

ARG JAR_FILE="springboot3-logging-file.jar"
# copy file from local to images then rename to spring-boot.jar
ADD target/$JAR_FILE spring-boot.jar

ENV APPLICATION_PORT=8080
ENV APPLICATION_LOGGING_PATH=/var/logs/springboot-app

RUN mkdir -p $APPLICATION_LOGGING_PATH

# reqired command to run application
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "spring-boot.jar"]
CMD ["--server.port", "$APPLICATION_PORT"]
