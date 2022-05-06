#!/bin/sh -l
echo $GITHUB_WORKDIR

mkdir ${GITHUB_WORKDIR}/tests
mv /testsabc123/* ${GITHUB_WORKDIR}/tests
echo "${GITHUB_WORKDIR}/tests"
ls $GITHUB_WORKDIR

time=$(date)
echo "::set-output name=time::$time"