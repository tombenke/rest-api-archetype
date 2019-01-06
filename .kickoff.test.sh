#!/bin/bash
testBaseDir=${HOME}/tmp
destDir=${testBaseDir}/test-rest-api
cwd=`pwd`
echo Executing kickoff -a .kickoff.test.yml -f . -d {destDir}
rm $destDir -rf
kickoff -a .kickoff.test.yml -f . -d $destDir
cd $destDir
echo $destDir
pwd
sh ./.kickoff.sh
rm node_modules/* -fr
npm install
npm run build
npm run test
npm run lint
cd $cwd
echo "Completed"

