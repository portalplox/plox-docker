#!/bin/bash

#dropdb platy -U platy -f
#createdb platy -U platy
#pg_restore -U platy --clean --dbname=platy --create --verbose /shared/dumps/postgres/platy.tar

psql -U platy -d platy -h localhost -p 5432 -f /shared/dumps/postgres/backup_postgres.sql
#psql -U platy -d platy -h localhost -p 5432 -f /shared/dumps/postgres/distancias.sql
