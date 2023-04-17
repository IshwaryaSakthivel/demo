# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:11-jre-slim
VOLUME /tmp
# copy the packaged jar file into our docker image
COPY target/demo-0.0.1-SNAPSHOT.jar /demo-v1.0.jar
EXPOSE 8080
# set the startup command to execute the jar
CMD ["java", "-jar", "/demo-v1.0.jar"]