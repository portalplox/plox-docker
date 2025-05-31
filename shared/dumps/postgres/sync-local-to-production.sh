#!/bin/bash

rsync -ahvz -e "ssh -i ~/projects/plox_brasil/ssh/plox" /home/david/projects/plox_brasil/docker/shared/dumps/postgres/backup_postgres.sql.bz2 plox@172.16.11.2:/home/plox/projetos/plox_brasil/docker/shared/dumps/postgres/
rsync -ahvz -e "ssh -i ~/projects/plox_brasil/ssh/plox" /home/david/projects/plox_brasil/docker/shared/dumps/postgres/distancias.sql.bz2 plox@172.16.11.2:/home/plox/projetos/plox_brasil/docker/shared/dumps/postgres/

# DESCOMPACTAR
#tar -xvf backup_postgres_2023-11-25_03-00-01.sql.bz2 -C /caminho/do/seu/diretorio
#bunzip2 backup_postgres_2023-11-25_03-00-01.sql.bz2
