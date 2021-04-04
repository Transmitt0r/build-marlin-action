FROM python:3-slim-buster

RUN apt update && apt install -y curl build-essential g++ git

# Install PlatformIO Core
RUN python -m pip install --upgrade pip
RUN pip install --upgrade platformio

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]