#!/bin/sh -l
echo $GITHUB_WORKDIR

mv /testsabc123/* /abc123
echo "/abc123"
ls /abc123

mkdir /testmkdir
mv /testsabc123/* /testmkdir
echo "/testmkdir"
ls /testmkdir

mkdir /github/testmkdir
mv /testsabc123/* /github/testmkdir
echo "/testmkdir"
ls /github/testmkdir

mkdir ${GITHUB_WORKDIR}/tests
mv /testsabc123/* ${GITHUB_WORKDIR}/tests
echo "/testmkdir"
ls $GITHUB_WORKDIR

time=$(date)
echo "::set-output name=time::$time"