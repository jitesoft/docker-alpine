FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
LABEL com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/alpine/buildbase"
RUN apk add --no-cache build-base git python linux-headers
