FROM ubuntu:vivid
RUN apt-get update \
      && apt-get install --no-install-recommends -y software-properties-common \
      && apt-add-repository ppa:ansible/ansible \
      && apt-get update \
      && apt-get install -y sudo openssh-server ssh aptitude ufw ansible
WORKDIR /app
