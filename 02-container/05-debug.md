# Debug

## Inspect
```shell
docker inspect CONTAINER_ID
```
```shell
docker inspect --format '{{ .NetworkSettings.IPAddress }}' CONTAINER_ID
```

## Logs
```shell
docker logs CONTAINER_ID
```
### Real time
```shell
docker logs -f CONTAINER_ID
```
