# Volume

## Mount docker sock
Create container
```shell
docker run -ti -v /var/run/docker.sock:/var/run/docker.sock:ro alpine sh
```
Display containers list
```shell
curl --unix-socket /var/run/docker.sock 'http://localhost/containers/json' | jq
```

## Consistent
```shell
docker run -ti -v $PWD/02-container/assets/doc.txt:/demodocker/doc.txt alpine
```

```shell
docker run -ti --mount type=bind,src=$PWD/02-container/assets/doc.txt,target=/demodocker/doc.txt alpine
```

## Readonly

```shell
docker run -ti -v $PWD/02-container/assets/doc.txt:/demodocker/doc.txt:ro alpine
```
