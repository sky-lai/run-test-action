# Container image that runs your code
FROM alpine:3.14

# Install git and openssh
RUN apk fix && \
    apk --no-cache --update add git git-lfs less openssh && \
    git lfs install
COPY known_hosts /known_hosts

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]




