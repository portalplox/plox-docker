#!/bin/bash
mongorestore --username mongo --password docker --drop -d plox /shared/dumps/mongo/plox/
