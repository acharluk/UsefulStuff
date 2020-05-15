FROM sonarqube:8.2-community

USER root
RUN apt update && apt install nodejs -y

USER sonarqube