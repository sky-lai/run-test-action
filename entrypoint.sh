#!/bin/sh -l


echo "\$HOME=$HOME"

# Known Hosts
mkdir $HOME/.ssh

ssh-keyscan github.com >> $HOME/.ssh/known_hosts
ssh-keyscan bitbucket.org >> $HOME/.ssh/known_hosts

# Private Key
echo $2 >> $HOME/.ssh/id_rsa
chmod u=rw,g=,o= $HOME/.ssh/id_rsa

GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=$HOME/.ssh/known_hosts -o StrictHostKeyChecking=no"
echo $GIT_SSH_COMMAND
# clone tests repo
git clone ssh://github.com/sky-lai/a-simple-api-tests.git __tests-cases
ls