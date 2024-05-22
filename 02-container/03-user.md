# User

```shell
docker run -ti alpine
whoami
```

Display list of users
```shell
cat /etc/passwd
```

```shell
docker run -ti --user guest alpine
whoami
```

```shell
docker run -ti --user demo alpine
# ERROR because demo user does not exists in alpine image
```
