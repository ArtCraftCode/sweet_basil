#!/bin/bash
compass compile -e production --force --css-dir=stylesheets/$1

mkdir builds/$1
mkdir builds/$1/css
cp -r stylesheets/$1/ builds/$1/css
cp -r sass builds/$1

s3_website push

git add builds
git add stylesheets
git commit -m "build & deploy version $1 [$2]"
git tag v$1
git push origin v$1