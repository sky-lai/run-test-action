#!/bin/sh -l
echo $GITHUB_WORKDIR

mv /tests $GITHUB_WORKDIR/tests

ls $GITHUB_WORKDIR

time=$(date)
echo "::set-output name=time::$time"