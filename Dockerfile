FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD docker-spring-boot-demo-0.0.1-SNAPSHOT.jar souyunku-app.jar
RUN sh -c 'touch /souyunku-app.jar'
EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/souyunku-app.jar"]