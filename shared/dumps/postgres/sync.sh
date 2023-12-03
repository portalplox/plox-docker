#!/bin/bash

rsync -ahvz -e "ssh -i ~/.ssh/plox" plox@177.222.253.82:/home/plox/projetos/plox_brasil/docker/shared/dumps/postgres/platy.tar.bz2 /home/david/projetos/plox_brasil/docker/shared/dumps/postgres/
