# Use an official Ubuntu 20.04 LTS as a base image
FROM ubuntu:20.04
ARG  DEBIAN_FRONTEND=noninteractive

# Set the working directory in the container
WORKDIR /app

# Set environment variables for Python
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONFAULTHANDLER=1 \
    LANG=C.UTF-8 \
    TZ=UTC


# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
    wget \
    cmake \
    g++ \
    unzip \
    libopencv-dev \
    python3.12 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install PyTorch
RUN pip3 install "networkx==3.1"
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Install additional Python packages
RUN pip3 install opencv-python
RUN pip3 install matplotlib

RUN wget https://download.pytorch.org/libtorch/nightly/cpu/libtorch-shared-with-deps-latest.zip -P /usr/local/lib/ \
    && unzip /usr/local/lib/libtorch-shared-with-deps-latest.zip -d /usr/local/lib/

