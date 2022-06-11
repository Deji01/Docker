# Docker
Docker Basics

Build container from the same directory where Dockerfile is
```bash
docker build .
```

See information about built images
```bash
docker images
```

Build docker image with tag $removeme$
```bash
docker build -t localbuild:removeme .
```

Search for image
```bash
docker images localbuild
```

Push to $localbuild$ repository
```bash
docker push localbuild:removeme
```
Re-Tag
```bash
docker tag localbuild:removeme deji01/removeme
docker push deji01/removeme
```