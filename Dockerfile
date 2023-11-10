# FROM nvidia/cuda:12.2.2-cudnn8-devel-ubuntu22.04

# COPY . .
# Use Ubuntu as the base image
FROM ubuntu:latest

# Install necessary dependencies and packages within the Docker image
RUN apt-get update && apt-get install -y \
    curl \
    gnupg

# Copy the NVIDIA repository configuration to the Docker image
RUN distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \ 
&& curl -s -L https://nvidia.github.io/libnvidia-container/gpgkey | apt-key add - \
&& curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | tee /etc/apt/sources.list.d/libnvidia-container.list \
&& apt-get update && apt-get install -y nvidia-container-toolkit

# ARG distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
# RUN curl -s -L https://nvidia.github.io/libnvidia-container/gpgkey | apt-key add - \
#     && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | tee /etc/apt/sources.list.d/libnvidia-container.list \
#     && apt-get update \
#     && apt-get install -y nvidia-container-toolkit

# Any additional configurations or setup can be added here

# Your commands or application setup within the Docker container can follow below
# For instance, CMD to start a shell session
CMD ["/bin/bash"]
