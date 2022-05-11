# kristinjeanna/docker-alpine

[![GitHub license](https://img.shields.io/github/license/kristinjeanna/docker-alpine.svg?style=flat)](https://github.com/kristinjeanna/docker-alpine/blob/main/LICENSE) [![Latest Docker tag](https://img.shields.io/docker/v/kristinjeanna/alpine/latest?style=flat)](https://hub.docker.com/repository/docker/kristinjeanna/alpine) ![Last commit](https://img.shields.io/github/last-commit/kristinjeanna/docker-alpine?style=flat)

A Docker image based on the `alpine:latest` that serves as the base image for my downstream alpine-based Docker images. Includes `tini` as the PID 0 process and runs as a user named "default".

- [Requirements](#requirements)
- [How to obtain the image](#how-to-obtain-the-image)
  - [Pull from Docker Hub](#pull-from-docker-hub)
  - [Manually building the image](#manually-building-the-image)
    - [Method 1](#method-1)
    - [Method 2](#method-2)
- [Run the image](#run-the-image)
- [See also](#see-also)

## Requirements

- [Docker](https://www.docker.com/get-started)

## How to obtain the image

### Pull from Docker Hub

```shell
docker pull kristinjeanna/alpine
```

### Manually building the image

First, clone this repo. Then, use one of the following two methods to create the Docker image. The image will be labelled `kristinjeanna/alpine:latest` and can be used to construct downstream images.

#### Method 1

At a command prompt, `cd` to the source directory of the cloned repo, and build with:

```shell
./build.sh
```

This script will scrub a previous `kristinjeanna/alpine` image prior to performing the build.

#### Method 2

At a command prompt, `cd` to the source directory of the cloned repo, and build with:

```shell
docker build -t kristinjeanna/alpine -f Dockerfile .
```

## Run the image

The following runs the image and results in a bash prompt in the running container:

```shell
docker run -ti --rm kristinjeanna/alpine
```

By default, the image runs as a user named "default". To run as root, add `--user=root` to the command:

```shell
docker run -ti --rm --user=root kristinjeanna/alpine
```

## See also

- [`kristinjeanna/alpine` on Docker Hub](https://hub.docker.com/repository/docker/kristinjeanna/alpine)
- [tini](https://github.com/krallin/tini) init
