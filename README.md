## Introduction
This repository contains files for building and running Jenkins locally with Docker. Feel free to modify it to fit your needs: add tools in the Dockerfile, or attach volumes as required.

**WARNING!**

This solution is unsafe for production use, as it relies on running as root and sharing the docker.sock. Only for educational purposes.

## Requirements
- Docker

## How to use
Build the image:
```sh
docker build -t custom-jenkins .
```

Run the image:
```sh
docker run -p 8080:8080 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  custom-jenkins
```
