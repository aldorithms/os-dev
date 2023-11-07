FROM ubuntu:latest
RUN apt update && \
    apt install -y nasm qemu-system
COPY boot.asm .
RUN nasm boot.asm -f bin -o boot.bin
CMD ["qemu-system-x86_64","-nographic", "boot.bin"]