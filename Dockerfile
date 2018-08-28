FROM cloudbees/jnlp-slave-with-java-build-tools

MAINTAINER maathor <mrichard@slimpay.com>

USER root

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    ca-certificates \
    zip \
    gcc \
    git \
    libpq-dev \
    make \
    python-pip \
    python2.7 \
    python2.7-dev \
    ssh

WORKDIR /home/jenkins
USER jenkins
RUN pip install virtualenv

