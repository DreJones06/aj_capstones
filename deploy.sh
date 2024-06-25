#!/bin/bash
docker login -u karthick0501  -p dckr_pat_8gbfGPimLBn6h3h-X-6zhoJS0U0

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh 'chmod +x build.sh'
       sh './build.sh'

        docker tag devops-build karthick0501/dev
        docker push karthick0501/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then
        sh 'chmod +x build.sh'
        sh './build.sh'

        docker tag devops-build karthick0501/prod
        docker push karthick0501/prod

else
        echo "failed"
fi
