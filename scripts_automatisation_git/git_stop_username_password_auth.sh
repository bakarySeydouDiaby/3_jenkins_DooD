#!/bin/bash
## this script help me not giving username and password on every push
## to gitlab url

git_url=$1

git config credential.helper store

git push "$git_url"

Username for "$git_url": bakaryseydou@gmail.com
Password for "$git_url": 16temGitlab1!