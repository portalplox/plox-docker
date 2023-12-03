#!/bin/bash


rsync -ahvz -e "ssh -i ~/projetos/plox_brasil/ssh/plox" /home/david/projetos/plox_brasil/docker/shared/dumps/mongo/backup_mongo_2023-11-25_03-30-01.tar.bz2 plox@10.10.61.20:/home/plox/projetos/plox_brasil/docker/shared/dumps/mongo/


# DESCOMPACTAR
#tar -xvf backup_mongo_2023-11-25_03-30-01.tar.bz2 -C /caminho/do/seu/diretorio
