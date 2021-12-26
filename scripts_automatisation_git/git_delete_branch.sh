#!/bin/bash
# ce script supprime une branche en local et en remote sur le depot

branche=$1
git checkout main
git branch -d "$branche"
git push origin --delete "$branche"
git branch --all

## to run this : /bin/bash nom_script.sh nom_branche

######### DOC
