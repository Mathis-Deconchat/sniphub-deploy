# Base image
FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]


# Install Git
RUN apt-get update && \
    apt-get install -y git


# Install Node.js

# Install npm
RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs


COPY ./migration.sh .

RUN chmod +x migration.sh

CMD ./migration.sh
