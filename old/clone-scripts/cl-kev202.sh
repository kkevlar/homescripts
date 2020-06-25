#!/bin/sh
cd '..'
git clone "https://github.com/kkevlar/cpe202-private.git" cpe202
cd cpe202

git remote add pub "https://github.com/kkevlar/cpe202.git"
git fetch pub
git checkout pub/master
git checkout -b pubm
git branch --set-upstream-to=pub/master pubm

git checkout master

git remote add bb "https://bitbucket.org/kkevlar/cpe202.git"
git fetch bb
git checkout bb/master
git checkout -b bbm
git branch --set-upstream-to=bb/master bbm

git checkout master
