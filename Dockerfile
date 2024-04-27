# Use an official Ubuntu 20.04 LTS as a base image
FROM ubuntu:20.04
ARG  DEBIAN_FRONTEND=noninteractive

# Set the working directory in the container
WORKDIR /app

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
    cmake \
    g++ \
    libopencv-dev \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://download.pytorch.org/libtorch/nightly/cpu/libtorch-shared-with-deps-latest.zip -P /usr/local/lib/ \ 
    && unzip /usr/local/lib/libtorch-shared-with-deps-latest.zip -d /usr/local/lib/
