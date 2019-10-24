#FROM alpine/git as clone
#ENV APPROOT="/app"
#WORKDIR $APPROOT
#RUN git clone https://github.com/navkkrnair/10-2019-config-server.git

#FROM maven:3.6-jdk-8-alpine as build
#ENV APPROOT="/app"
#WORKDIR $APPROOT
#COPY --from=clone $APPROOT/10-2019-config-server $APPROOT
#RUN mvn package -DskipTests


FROM openjdk:8-jre-alpine
MAINTAINER "navkkrnair@gmail.com"
ENV APPROOT="/app"
WORKDIR $APPROOT 
COPY target/config-server-2.0.jar $APPROOT
EXPOSE 8888
ENTRYPOINT ["java"]
CMD ["-jar","-Xmx512m","-Xms512m","-Djava.security.egd=file:/dev/./urandom", "config-server-2.0.jar"]
