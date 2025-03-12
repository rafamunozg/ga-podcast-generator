FROM ubuntu:latest

# Install dependencies
RUN apt update && apt install -y \
    python3.10 \
    python 3-pip \
    git
RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]