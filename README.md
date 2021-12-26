
# Projet Jenkins DooD 1

## Description du premier projet
    
    ENVIRONMENT#1_name : master-docker\
        Jenkins will fetch the master branch and build jobs on the prod env container

    ENVIRONMENT#2_name : dev-docker\
        Jenkins will fetch the dev branch and build jobs on the dev env container


    USE CASE EXAMPLE :
    =================

    2 docker containers httpd for master and dev environments:\
        - master-docker : `docker run -d -t -i -p 8090:80 -v /prod_env:/usr/local/apache2/htdocs/ --name 1_apacheProd_container httpd`\
        - dev-docker : `docker run -d -t -i -p 8091:80 -v /test_env:/usr/local/apache2/htdocs/ --name 2_apacheDev_container httpd`

    JOB#1_name : master_docker_deployment\
        If Developer push to master branch\ 
        then Jenkins will :\
            fetch from main \
            and deploy on the master-docker environment. \
        As they both dev-docker and master-docker environments are on different docker containers.


    JOB#2_name : dev_docker_deployment\
        If Developer push to dev branch : \
        then Jenkins will fetch from dev \
        and deploy on the dev-docker environment.


    JOB#3_name : QA_merge_dev_to_main 

    Manually the QA team will check (test) for the website running in the dev-docker environment.\
	If it is running fine \
	then Jenkins will :\
			merge the dev branch to main branch \
			and trigger #job 2 \


## Etape
- Installtion ngrok pour triggers webhook
- Creation container jenkins avec le Dockerfile : creation d'un subnet "DooD_net" auquel sera rattaché mes containers qui communiquent
- Creation jobs jenkins qui lance un nouveau container docker : ce container sera un Dood (sibling container : volume liant le socket et le binaire lors de l'execution de la commande docker run -dit ...) et fera tourner un serveur httpd

## Description des premiers jobs

master-docker environment ==> branch master
master-docker environment ==> branch dev



