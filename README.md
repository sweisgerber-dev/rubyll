# Rubyll

> A ruby-based docker image for building, verifying and and publishing websites.


## Tools:

> [Debian Stretch](https://www.debian.org/releases/stretch/)

- build-essentials
- [python 3.5 (default)](https://www.python.org/downloads/release/python-355/)
- [python 2.7](https://www.python.org/download/releases/2.7/)
- [pip](https://pip.pypa.io)
- [npm](https://www.npmjs.com/)
- [nodejs](https://nodejs.org)
- [lftp](https://lftp.yar.ru/) with ftp over TLS
- [imagemagick](https://www.imagemagick.org)


## [Docker Hub](https://hub.docker.com/r/sweisgerber/rubyll/)


## Build

```bash
docker build -t rubyll .
```

## Run

```
docker run -i -t rubyll
```
