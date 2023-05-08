# Rubyll

> A ruby-based docker image for building, verifying and and publishing websites.


## Tools:

> [Debian Bullseye](https://www.debian.org/releases/stretch/)

- build-essentials
- python (default)
- [pip](https://pip.pypa.io)
- [npm](https://www.npmjs.com/)
- [nodejs](https://nodejs.org)
- [lftp](https://lftp.yar.ru/) with ftp over TLS
- [imagemagick](https://www.imagemagick.org)


## [Docker Hub](https://hub.docker.com/r/sweisgerber/rubyll/)


## Build

```bash
docker buildx build ./ -t rubyll:latest
```

## Run

```
docker run -i -t rubyll:latest
```
