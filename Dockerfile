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
RUN cd /tmp && \
   wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-473.0.0-linux-x86_64.tar.gz && \
   tar -xf google-cloud-cli-473.0.0-linux-x86_64.tar.gz && \
   ./google-cloud-sdk/install.sh --quiet