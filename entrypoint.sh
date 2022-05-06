#!/bin/sh -l
pwd
echo "ls -al"
ls -al

echo ""
echo "ls .. -al"
ls .. -al

echo ""
echo "ls ../file_commands -al"
ls ../file_commands -al

echo ""
echo "ls ../home -al"
ls ../home -al

echo ""
echo "ls ../workflow -al"
ls ../workflow -al

echo "HOME<$HOME>"
echo "GITHUB_WORKDIR:<$GITHUB_WORKSPACE>"

mkdir ${GITHUB_WORKSPACE}/tests
mv /testsabc123/* ${GITHUB_WORKSPACE}/tests
echo "${GITHUB_WORKSPACE}/tests"
ls $GITHUB_WORKSPACE

time=$(date)
echo "::set-output name=time::$time"