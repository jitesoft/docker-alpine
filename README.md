# Alpine linux

This image contains the linux distro [Alpine](https://www.alpinelinux.org/).  
It's a very small linux distro making it very suitable for containers.

## Why this image?

Well, this image is pretty much identical to the official dockerhub image for alpine linux, but after recent
issues with docker hub, we decided it would be a good idea to have an image on gitlab too which we can derive from 
for our other alpine based images.  

We have also changed the package repository to use a https mirror (https://ftp.acc.umu.se).  

## Use the image

If you wish to use the image directly from gitlab you can pull it via the following uri:

```bash
docker pull registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
```

There is also a image uploaded to docker hub for those who wish to use it from there:

```bash
docker pull jitesoft/alpine:latest
```
