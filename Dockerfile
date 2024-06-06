FROM openjdk:11

ARG APP=/opt
ARG APP_HOME=/opt/deployment

EXPOSE 8089
ADD target/gestion-station-ski-1.0.jar gestion-station-ski-1.0.jar
ENTRYPOINT ["java","-jar","/gestion-station-ski-1.0.jar"]

#COPY target/*.jar /opt/deployment/gestion-station-ski-1.0.jar
#COPY startup-server.sh /opt/deployment/startup-server.sh
#RUN chmod +x /opt/deployment/startup-server.sh

#ENTRYPOINT ["/opt/deployment/startup-server.sh"]

#ENTRYPOINT ["java", "-jar", "/opt/deployment/gestion-station-ski-1.0.jar", "--spring.config.location=file:/usr/deployment/application.properties"]
