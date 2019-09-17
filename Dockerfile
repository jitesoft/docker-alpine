FROM scratch
ARG VERSION
ARG TARGETPLATFORM
ARG VERSION_SHORT
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/alpine" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/alpine/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/alpine" \
      com.jitesoft.app.alpine.version="${VERSION}" \
      com.jitesoft.build.arch="${TARGETPLATFORM}"

ENV LANG="C.UTF-8"

ADD ./files/${TARGETPLATFORM}/alpine-minirootfs.tar.gz /
RUN printf "https://ftp.acc.umu.se/mirror/alpinelinux.org/v${VERSION_SHORT}/main\nhttps://ftp.acc.umu.se/mirror/alpinelinux.org/v${VERSION_SHORT}/community" > /etc/apk/repositories \
 && apk add --no-cache --virtual .init-deps tzdata \
 && cp /usr/share/zoneinfo/UTC /etc/localtime \
 && echo "UTC" > /etc/timezone \
 && apk del .init-deps

CMD ["/bin/ash"]
