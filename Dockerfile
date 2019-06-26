FROM scratch
ARG VERSION="x.x.x"
ARG ARC="x86_64"
ARG VERSION_SHORT="x.x"
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/alpine" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/alpine/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/alpine" \
      com.jitesoft.app.alpine.version="${VERSION}" \
      com.jitesoft.build.arch="${ARC}"

ADD alpine-minirootfs.tar.gz /
RUN printf "https://ftp.acc.umu.se/mirror/alpinelinux.org/v${VERSION_SHORT}/main\nhttps://ftp.acc.umu.se/mirror/alpinelinux.org/v${VERSION_SHORT}/community" > /etc/apk/repositories
CMD ["/bin/ash"]
