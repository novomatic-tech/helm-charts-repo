#!/bin/sh

set -e

git add index.yaml
git config user.name  "Travis"
git config user.email "travis@travis-ci.org"
git commit -m "Update index.yaml file."
git config credential.helper $GITHUB_TOKEN
git push origin $TRAVIS_BRANCH 2>&1 > /dev/null