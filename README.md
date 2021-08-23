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

_Observe: Push to quay.io currently disabled and images might be old due to quay not fully supporting multi-arch images._

### Dockerfile

Dockerfile and scripts can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/alpine) or [GitHub](https://github.com/jitesoft/docker-alpine).

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

<a href="https://fosshost.org/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/fosshost.png" height="128" alt="Fosshost logo" />
</a>
<a href="https://www.aarch64.com/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/aarch64.png" height="128" alt="Aarch64 logo" />
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)

