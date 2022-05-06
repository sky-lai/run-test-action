#!/bin/sh -l

echo "\$0"
echo $0

echo "\$1"
echo $1

echo "\$2"
echo $2

# insert credential
mkdir ~/.ssh
mv /known_hosts ~/.ssh/known_hosts
echo $2 >> ~/.ssh/id_rsa
chmod u=rw,g=,o= ~/.ssh/id_rsa

echo 'ls ~/.ssh'
ls ~/.ssh

echo 'ls ~/.ssh/known_hosts'
ls ~/.ssh/known_hosts

# clone tests repo
# git clone $1 __test-repo

# ls