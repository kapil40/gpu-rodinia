#FROM nvidia/cuda:12.2.2-cudnn8-devel-ubuntu22.04

#RUN apt-get update && apt-get install -y python3 

#COPY . .

FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel
#FROM  pytorch/pytorch:1.13.0-cuda11.6-cudnn8-devel
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y cuda-nsight-systems-12-1 libglew-dev make && pip install pandas
 
COPY . .
