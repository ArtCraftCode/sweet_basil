#!/bin/bash
compass compile -e production --force --css-dir=stylesheets/$1

mkdir builds/$1
mkdir builds/$1/css
cp -r stylesheets/$1 builds/$1/css

mkdir builds/$1/sass
cp -r sass builds/$1/sass

s3_website push

git add builds
git add stylesheets
git commit -m "build & deploy version $1 [$2]"