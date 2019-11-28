FROM ubuntu:18.04

RUN apt-get update && apt-get install -y sudo openssh-server curl lsb-release gnupg2
RUN mkdir -p /run/sshd
RUN echo 'root:root' | chpasswd
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
EXPOSE 22