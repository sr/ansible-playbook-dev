FROM ubuntu:wily
ENV ANSIBLE_VERSION 2.0.0.2-1ppa~wily
RUN apt-get update \
      && apt-get install --no-install-recommends -y software-properties-common \
      && apt-add-repository ppa:ansible/ansible \
      && apt-get update \
      && apt-get install -y \
        ansible=$ANSIBLE_VERSION \
        aptitude \
        openssh-server \
        ssh \
        sudo \
        ufw
VOLUME /app
WORKDIR /app
