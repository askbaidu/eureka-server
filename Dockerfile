FROM askbaidu/alpine_jdk1.8
VOLUME /tmp
ADD eureka-server-0.0.1-SNAPSHOT.jar eureka-server-0.0.1.jar
#RUN bash -c 'touch /eureka-server-0.0.1.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka-server-0.0.1.jar"]
EXPOSE 8761