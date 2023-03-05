#!/bin/sh
GIT_URL=https://oauth2:${GITHUB_PAT}@github.com/Mathis-Deconchat/${GIT_PROJECT}.git

if [ -d ./$GIT_PROJECT ]; then
    rm -rf ./$GIT_PROJECT
fi

git clone --depth 1 -b ${BRANCH} ${GIT_URL}
cd $GIT_PROJECT

npx prisma migrate dev -n auto
npx prisma db seed 

