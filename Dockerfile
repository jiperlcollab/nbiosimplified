# nBio docker build

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y && apt install -y \
    libexpat1-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libxt-dev \
    xorg-dev \
    build-essential \
    libharfbuzz-dev \
    cmake \
    bash \
    unzip

WORKDIR /topasdocker/build

RUN cd /home/runner/work/mynbio/mynbio/topas_3_9/debian9 && \
    unzip Geant4Headers.zip
