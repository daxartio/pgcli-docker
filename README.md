# pgcli-docker

Dockerized version of the pgcli tool for postgres.

## Quick usage

1. Pull the docker image: `docker pull daxart/pgcli`
2. Run the container: `docker run -it --rm daxart/pgcli postgresql://user:password@host:port/dbname`

### Start with docker compose

```bash
curl https://raw.githubusercontent.com/daxartio/pgcli-docker/master/docker-compose.yml -o docker-compose.yml
docker-compose run --rm pgcli
```
