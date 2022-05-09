#!/bin/sh -l

# insert credential
# mkdir $HOME/.ssh

# ssh-keyscan github.com >> $HOME/.ssh/known_hosts
# ssh-keyscan bitbucket.org >> $HOME/.ssh/known_hosts
# chmod 644 $HOME/.ssh/known_hosts

# echo $2 >> $HOME/.ssh/id_rsa
# chmod u=rw,g=,o= $HOME/.ssh/id_rsa

# clone tests repo
git clone git@github.com:sky-lai/a-simple-api-tests.git __tests-cases
ls