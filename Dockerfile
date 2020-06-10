FROM ubuntu:20.04
MAINTAINER rgraciano@protonmail.ch
COPY . /opt/
RUN apt-get update -y
RUN apt-get install -y --no-install-recommends python3-dev python3-pip firefox
RUN apt-get clean && rm -rvf /var/lib/apt/lists/*
RUN CDPATH="/opt/instapy" && cd ${CDPATH} && \
    wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz && \
    tar -xvzf geckodriver-v0.26.0-linux64.tar.gz && mv geckodriver /usr/local/bin/ && \
    chown root:root /usr/local/bin/geckodriver && rm -rvf geckodriver-v0.26.0-linux64.tar.gz
RUN pip3 install instapy selenium