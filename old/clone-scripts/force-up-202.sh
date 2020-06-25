#!/bin/sh
cd '..'
cd cpe202

git checkout master
git pull
git checkout pubm
git pull
git checkout bbm
git pull

git checkout pubm
git reset --hard f78a580b7c809093e0d848063ca13d7a293672ee
git rebase origin/master
git push pub HEAD:master --force

git checkout bbm
git reset --hard f78a580b7c809093e0d848063ca13d7a293672ee
git rebase origin/master
git push bb HEAD:master --force

git checkout master

