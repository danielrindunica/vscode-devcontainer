FROM alpine:latest

# Set the locale to C
ENV LANG C
ENV LC_ALL C

# Update package list and install required packages
RUN apk update && \
    apk add git \
            openssh-client \
            python3 \
            wget \
            bash

# Download and install Google Cloud SDK
RUN cd /opt && \
   wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-473.0.0-linux-x86_64.tar.gz && \
   tar -xf google-cloud-cli-473.0.0-linux-x86_64.tar.gz && \
   bash -c ./google-cloud-sdk/install.sh --quiet && \
   rm -rf google-cloud-cli-473.0.0-linux-x86_64.tar.gz

# Download and install Terraform
RUN cd /tmp && \
    wget https://releases.hashicorp.com/terraform/1.8.2/terraform_1.8.2_linux_amd64.zip && \
    unzip terraform_1.8.2_linux_amd64.zip && \
    cp terraform /usr/bin/ && \
    rm -rf /tmp/*

# Download and install Docker
RUN cd /tmp && \
    wget https://download.docker.com/linux/static/stable/x86_64/docker-26.1.0.tgz && \
    tar -xzvf docker-26.1.0.tgz && \
    cp docker/* /usr/bin/ && \
    rm -rf /tmp/*
