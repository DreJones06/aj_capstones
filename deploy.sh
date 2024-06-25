#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u drejones06 -p dckr_pat_wDWAxLoonygIJlzcpF75wsWL_d4
    docker tag devops-build drejones06/dev
    docker push drejones06/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u drejones06 -p dckr_pat_wDWAxLoonygIJlzcpF75wsWL_d4
    docker tag devops-build drejones06/prod 
    docker push drejones06/prod
else
    echo "Failed"
fi
