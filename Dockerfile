FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

EXPOSE 8080
