# Alpine linux

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/alpine.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/alpine)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

This image contains the linux distro [Alpine](https://www.alpinelinux.org/).  
It's a very small linux distro making it very suitable for containers.

This image is used as a base image for most of the [Jitesoft](https://jitesoft.com) docker images.  

It's important to be aware that this image have no `none-root` user created, running containers with a root
user could be a security issue. So if you derive from this image, creating a new user to run the services
in the container is a good idea.

Each image is built for the following architectures: `amd64/x86_64`, `arm64`, `armv7`, `ppc64le`, `s390x`, `x86`.  

## Tags

Tags follows the releases of alpine, they are automatically built via GitLab CI, `latest` is the most recent version.  
Be sure to check the tags for a full list of tags if you need a more specific version constraint.

### Registries

The `jitesoft/alpine` images should be possible to find at the following registries:

* `docker.io/jitesoft/alpine` (or just `jitesoft/alpine`)
* `registry.gitlab.com/jitesoft/dockerfiles/alpine`
* `ghcr.io/jitesoft/alpine`
* `quay.io/jitesoft/alpine`

_Observe: Pulling from ghcr.io is currently not possible, as multi-arch images automatically are made private as of now._

_Observe: Push to quay.io currently disabled and images might be old due to quay not fully supporting multi-arch images._

#### Supported/actively built tags:

* `latest`, `3.12`, `3.12.x`

### Dockerfile

Dockerfile and scripts can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/alpine) or [GitHub](https://github.com/jitesoft/docker-alpine).

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).
