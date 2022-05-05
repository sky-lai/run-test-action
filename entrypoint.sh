#!/bin/sh -l

ls -al
node test/index.js
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"