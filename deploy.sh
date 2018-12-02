#!/bin/bash

git status

git add .

git commit -m "some changes"

git push origin master

hugo -d ../Blackcat1997.github.io/

cd ../Blackcat1997.github.io/

git add .

git status

git commit -m "updates"

git push origin master

