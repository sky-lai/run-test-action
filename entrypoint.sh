#!/bin/sh -l

# insert credential
mkdir ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
echo $2 >> ~/.ssh/id_rsa
chmod u=rw,g=,o= ~/.ssh/id_rsa

echo 'cat ~/.ssh/known_hosts'
cat ~/.ssh/known_hosts

# clone tests repo
git clone $1 __test-repo

ls