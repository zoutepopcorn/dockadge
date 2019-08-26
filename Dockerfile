# badgje
FROM node
RUN apt-get update && apt-get install -y \
git \
libncurses5-dev \
flex \
bison \
gperf \
python-serial \
libffi-dev \
libsdl2-dev \
libmbedtls-dev perl
RUN mkdir /usr/badge
WORKDIR /urs/badge
RUN git clone https://github.com/badgeteam/ESP32-platform-firmware
WORKDIR /urs/badge/ESP32-platform-firmware
RUN git submodule update --init --recursive
RUN unzip -p toolchain/xtensa-esp32-elf-linux64.zip xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar | tar xvf -
