#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u karthick0501 -p dckr_pat_8gbfGPimLBn6h3h-X-6zhoJS0U0
    docker tag devops-build karthick0501/dev
    docker push karthick0501/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u karthick0501 -p dckr_pat_8gbfGPimLBn6h3h-X-6zhoJS0U0
    docker tag devops-build karthick0501/prod 
    docker push karthick0501/prod
fi
