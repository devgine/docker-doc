# Container creation

## Using cli
```shell
docker run mongo:latest
```

## Using API
### Pull image
```shell
curl --unix-socket /var/run/docker.sock \
  -X POST 'http://localhost/images/create?fromImage=nginx:latest'
```

### Create container
```shell
curl --unix-socket /var/run/docker.sock \
  -d '{"Image":"nginx:latest"}' \
  -H 'Content-Type:application/json' \
  -XPOST 'http://localhost/containers/create'
```

### Start container
```shell
curl --unix-socket /var/run/docker.sock \
  -XPOST 'http://localhost/containers/CONTAINER_ID/start'
```
