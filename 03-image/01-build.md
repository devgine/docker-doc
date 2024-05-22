# Image

## docker build

Create volume
```shell
docker volume create save
```
Build image
```shell
docker build -t demonode:1 03-image/01-dockerfile
```

```shell
docker image inspect demonode:1
```

```shell
docker run --rm -d --name testimage -v save:/app/save demonode:1
echo "test file in /app/save directory" > save/test.txt
echo "test file in /app directory" > test.txt
```

```shell
docker exec -ti testimage sh
```

```shell
docker rm -f testimage
```

```shell
docker run --rm -d --name testimage -v save:/app/save demonode:1
```
check if save directory not empty
```shell
docker exec -ti testimage sh
cat save/tst.txt
# save/test.txt exist
# test.txt does not exist
```
