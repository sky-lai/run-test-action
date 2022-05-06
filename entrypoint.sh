#!/bin/sh -l

# insert credential
mkdir ~/.ssh
mv /known_hosts ~/.ssh/known_hosts
echo $2 >> ~/.ssh/id_rsa
chmod u=rw,g=,o= ~/.ssh/id_rsa

# clone tests repo
git clone $1 __test-repo

ls -al