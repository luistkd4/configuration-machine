FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN curl -sSL https://get.docker.com/ | sh
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
