#!/bin/bash
compass compile -e production --force --css-dir=stylesheets/$1
s3_website push