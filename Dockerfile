# Container image that runs your code
FROM node:16.15-alpine3.14

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY ./test ./test
COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json


# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]