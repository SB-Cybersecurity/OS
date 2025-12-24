FROM randomdude/gcc-cross-x86_64-elf

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get upgrade -y nasm
RUN apt-get upgrade -y xorriso
RUN apt-get upgrade -y grub-pc-bin
RUN apt-get upgrade -y grub-common

VOLUME /root/env
WORKDIR /root/env