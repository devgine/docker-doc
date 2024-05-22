# Docker run options

## Container name
```shell
docker run --name debug nginx
```

## Remove
```shell
docker run --rm alpine ping -c 4 8.8.8.8
```

## Restart
```shell
docker run --restart=on-failure -v $PWD/02-container/04-restart.sh:/volume/restart.sh --entrypoint /volume/restart.sh alpine
```
