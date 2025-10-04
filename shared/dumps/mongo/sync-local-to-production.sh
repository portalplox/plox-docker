#!/bin/bash

FILE="/Users/david/projects/plox_brasil/docker/shared/dumps/mongo/backup_mongo_2025-10-04_09-44-10.tar.bz2"
SERVER="root@72.60.15.142"
PATH_ON_SERVER="/root/backups/mongo/"

# Hostinger
rsync -ahvz --progress "$FILE"  "$SERVER:$PATH_ON_SERVER"

## onex
#rsync -ahvz -e "ssh -i ~/projects/plox_brasil/ssh/plox" ~/projects/plox_brasil/docker/shared/dumps/mongo/backup_mongo.tar.bz2 plox@172.16.11.2:/home/plox/projetos/plox_brasil/docker/shared/dumps/mongo/

# /home/plox/projetos/plox_brasil/docker/shared/dumps/mongo
# DESCOMPACTAR
#tar -xvf backup_mongo_2023-11-25_03-30-01.tar.bz2 -C /caminho/do/seu/diretorio
