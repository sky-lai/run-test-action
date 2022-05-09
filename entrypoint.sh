#!/bin/sh -l

# insert credential
mkdir ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
mv ~/.ssh/known_hosts $HOME/.ssh/known_hosts
echo $2 >> ~/.ssh/id_rsa
chmod u=rw,g=,o= ~/.ssh/id_rsa

echo 'cat $HOME/.ssh/known_hosts'
cat $HOME/.ssh/known_hosts

# clone tests repo
git clone git@github.com:sky-lai/a-simple-api-tests.git __tests-cases
ls