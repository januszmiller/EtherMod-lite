FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y python3
RUN apt-get install -y cmake
RUN apt-get install -y gcc-arm-none-eabi
RUN apt-get install -y libnewlib-arm-none-eabi
RUN apt-get install -y libstdc++-arm-none-eabi-newlib
RUN git clone https://github.com/raspberrypi/pico-sdk.git

VOLUME [ "/project" ]

ENV PICO_SDK_PATH=/pico-sdk

WORKDIR /project
