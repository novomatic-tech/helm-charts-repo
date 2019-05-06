#!/bin/sh

set -e

PUBLICATION_BRANCH=$TRAVIS_BRANCH
PUBLICATION_REPO=novomatic-tech/helm-charts-repo
PUBLICATION_FILE=index.yaml

git clone --branch=$PUBLICATION_BRANCH https://${GITHUB_TOKEN}@github.com/$PUBLICATION_REPO publish 2>&1 > /dev/null
cp -f $PUBLICATION_FILE publish
cd publish
git add index.yaml
git config user.name  "Travis"
git config user.email "travis@travis-ci.org"
git commit -m "Update index.yaml file."
git push origin $PUBLICATION_BRANCH 2>&1 > /dev/null