# Docker network

## List
```shell
docker network ls
```

## Create network
```shell
docker network create demo
```

## Connect container to a specific network
```shell
docker run --name nginxdemo --network demo -d nginx
```

```shell
docker network inspect demo
```

## Connect container to a host network
```shell
docker run --name nginxhost -d --network host nginx
```

```shell
docker network inspect host
```

```shell
curl http://localhost
# nginx home page
```

## Connect container to a none network
```shell
docker run --name alpinenone -d --network none alpine tail -f /dev/null
```

```shell
docker network inspect none
```

```shell
dockeer exec --ti alpinenone sh
ping 8.8.8.8
# Network unreachable
```

## Connect multiple containers to the same network
Create new network
```shell
docker network create common
```

Connect 2 containers to the common network
```shell
docker run --name alpineone -d --network common alpine tail -f /dev/null
```

```shell
docker run --name alpinetwo -d alpine tail -f /dev/null
```

```shell
docker network connect common alpinetwo
```

```shell
docker network inspect common
```
Create new container not connected to common network
```shell
docker run --name alpinethree -d alpine tail -f /dev/null
```
Check connection between containers
```shell
docker exec -ti alpineone sh
ping alpinetwo
# packets received
```
```shell
docker exec -ti alpinetwo sh
ping alpineone
# packets received
```

```shell
docker exec -ti alpinethree sh
ping alpineone
# bad address 'alpineone'
ping alpinetwo
# bad address 'alpinetwo'
```
