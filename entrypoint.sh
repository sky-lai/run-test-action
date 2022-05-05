#!/bin/sh -l
pwd
echo $GITHUB_WORKDIR
ls $GITHUB_WORKDIR

time=$(date)
echo "::set-output name=time::$time"