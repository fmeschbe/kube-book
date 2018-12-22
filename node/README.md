# Experiements from the Kubernetes in Action book

Build the docker image from the local file:

```sh
docker build -t kubia .
```

```sh
docker run --name kubia-container -p 8080:8080 -d kubia
```

```sh
docker exec -it kubia-container bash
```

```sh
docker stop kubia-container
```

```sh
docker rm kubia-container
```

```sh
docker tag kubia fmeschbe/kubia
```
