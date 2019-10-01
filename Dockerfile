FROM openjdk:8-jre-alpine
MAINTAINER "navkkrnair@gmail.com"
ENV APPROOT="/app"
WORKDIR $APPROOT    
ADD target/config-server-1.0.jar $APPROOT
EXPOSE 8080
ENTRYPOINT ["java"]
CMD ["-jar","-Xmx512m","-Xms512m","-Djava.security.egd=file:/dev/./urandom", "config-server-1.0.jar"]