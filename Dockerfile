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

RUN pip install --upgrade pip

ENV PATH="/home/jenkins/.local/bin:${PATH}"

USER jenkins

RUN pip install --user virtualenv
