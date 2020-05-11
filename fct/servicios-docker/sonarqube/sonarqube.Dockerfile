FROM sonarqube:8.2-community

# COPY sonarqube.properties /opt/sonarqube/conf/

USER root
RUN apt update && apt install nodejs -y

USER sonarqube