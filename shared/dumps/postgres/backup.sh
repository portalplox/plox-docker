#!/bin/bash

pg_dump -U platy -W -F t platy > /shared/dumps/postgres/platy.tar
