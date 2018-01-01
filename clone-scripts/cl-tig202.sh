#!/bin/sh
cd '..'
git clone "https://github.com/kkevlar/tigers-cpe202.git" tigerscpe202
cd tigerscpe202
git remote add upstream "https://github.com/sunchester/CPE-202.git"
git fetch upstream
git checkout upstream/master
git checkout -b upm
git branch --set-upstream-to=upstream/master upm
git checkout master
