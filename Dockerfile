# Procure Ubuntu VM with latest ver
FROM ubuntu:latest

# RUN will run a terminal cmd
# Update apt-get which is a library loader for Ubuntu
RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

RUN apt-get update && apt-get install -y python3-yaml

# Copy existing files to Docker image (VM environment)
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh 

# Specify entry point
ENTRYPOINT ["/entrypoint.sh"]