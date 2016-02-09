# docker-alpine-abuild

Alpine Linux package builder in Docker

## Usage

```
docker build -t hexeo/docker-alpine-abuild .
docker run --name alpine-abuild -v (pwd)/abuild.rsa:/home/builder/abuild.rsa -v (pwd)/APKBUILD:/home/builder/package/APKBUILD hexeo/docker-alpine-abuild
docker cp alpine-abuild:/home/builder/packages/builder/[ARCH]/[PKG].apk
docker rm -v alpine-abuild
```
