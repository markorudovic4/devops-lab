#!/usr/bin/env bash
set -e

cd /home/mrudovic/devops-lab

aws ecr get-login-password --region eu-north-1 \
| docker login --username AWS --password-stidn 631595683567.dkr.ecr.eu-north-1.amazonaws.com

docker-compose pull
docker-compose up -d
docker image prune -f