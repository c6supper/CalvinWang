#!/bin/sh

set -e

if [ "$#" -lt  "1" ]
  then
    echo "You have not input the password for github."
    exit
fi

# Retries a command on failure.
# $1 - the password for github

make -j4 && LANGUAGE=ch make -j4 && \
cp -rf build/ch/html/src/resume/index.html ./index_ch.html && \
cp -rf build/en/html/src/resume/index.html ./ && \
sed -i 's/fonts.googleapis.com/fonts.cat.net/g' ./index_ch.html && \
git commit -m "update resume" && git push