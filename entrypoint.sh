#!/bin/sh -l


echo "\$HOME=$HOME"

# Known Hosts
mkdir $HOME/.ssh

ssh-keyscan github.com >> $HOME/.ssh/known_hosts
ssh-keyscan bitbucket.org >> $HOME/.ssh/known_hosts

# Private Key
echo $2 >> $HOME/.ssh/id_rsa
chmod u=rw,g=,o= $HOME/.ssh/id_rsa

# clone tests repo
git clone git@github.com:sky-lai/a-simple-api-tests.git __tests-cases
ls