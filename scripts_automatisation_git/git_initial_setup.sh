#!/bin/sh
## apres creation du repertoire, se mettre dedans
## puis lancer ce script pour automatiser les commits et push

## Remarque : ce script est a lancer juste la premiere fois !!!
##             apres, a chasue changement, lancer automate_push.sh

### the first parameter is the gitlab/github remote git url
git_url=$1

git init --initial-branch=main

git config --global user.name "Bakary"
git config --global user.email "bakaryseydou@gmail.com"

git add .
git commit -m "first commit of local files"
git branch -M main
#git remote add origin https://github.com/bakarySeydouDiaby/2_git_scrapping_json_from_JSONPlacehoslder.git
# git remote add origin "$git_url"
git push -u origin main

## to run this : /bin/bash nom_script.sh url_gitlab