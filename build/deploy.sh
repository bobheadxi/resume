#!/bin/sh

git config --global user.email "bot@bobheadxi.dev"
git config --global user.name "bobheadxi-bot"

echo "Generating commit $TRAVIS_BUILD_NUMBER..."
git add .
git commit --message "build: $TRAVIS_BUILD_NUMBER"

echo 'Pushing to master...'
git remote add origin-master https://${GH_TOKEN}@github.com/bobheadxi/resume.git > /dev/null 2>&1
git push --quiet --set-upstream origin-master master

echo 'Branch updated'
git rev-parse HEAD
