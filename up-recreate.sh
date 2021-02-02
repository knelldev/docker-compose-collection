# !/bin/env sh
docker-compose pull
docker-compose up -d --force-recreate --build
docker image prune -f
