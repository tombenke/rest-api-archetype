#!/bin/bash
testBaseDir=${HOME}/tmp
destDir=${testBaseDir}/test-rest-api
cwd=`pwd`
echo Executing kickoff -a .kickoff.test.yml -f . -d destDir
rm $destDir -rf
kickoff -a .kickoff.test.yml -f . -d $destDir
cd $destDir
npm install
#npm run build
npm run test
npm run lint
cd $cwd
