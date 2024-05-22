# Image

## Simple build

```shell
docker build -t simplestage:1 -f 03-image/02-multistage/simple.Dockerfile 03-image/02-multistage
```

```shell
docker run --rm -d --name simplestage simplestage:1
```

## Multistage build
```shell
docker build -t multistage:1 -f 03-image/02-multistage/multistage.Dockerfile 03-image/02-multistage
```

```shell
docker run --rm -d --name multistage multistage:1
```

## Buildkit
```shell
DOCKER_BUILDKIT=1 docker build -t buildkit:test --target stage2 -f 03-image/02-multistage/buildkit.Dockerfile 03-image/02-multistage
```
