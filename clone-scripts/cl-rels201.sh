#!/bin/sh
cd '..'
git clone "https://github.com/kkevlar/rels201.git"
cd rels201
git checkout master

git remote add bb "https://bitbucket.org/kkevlar/rels201.git"
git fetch bb
git checkout bb/master
git checkout -b bbm
git branch --set-upstream-to=bb/master bbm

git checkout master
