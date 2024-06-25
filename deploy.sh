#!/bin/bash
docker login -u karthi050197  -p dckr_pat_8gbfGPimLBn6h3h-X-6zhoJS0U0

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh 'chmod +x build.sh'
       sh './build.sh'

        docker tag devops-build karthi050197/dev
        docker push karthi050197/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then
        sh 'chmod +x build.sh'
        sh './build.sh'

        docker tag devops-build karthi050197/prod
        docker push karthi050197/prod

else
        echo "failed"
fi
