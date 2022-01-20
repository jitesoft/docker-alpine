FROM scratch
ARG VERSION
ARG TARGETPLATFORM
ARG TARGETARCH
ARG VERSION_SHORT
ARG BUILD_TIME
ARG SHORT_SHA

LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      # Jitesoft labels
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/alpine" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/alpine/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/alpine" \
      com.jitesoft.app.alpine.version="${VERSION}" \
      com.jitesoft.build.arch="${TARGETARCH}" \
      com.jitesoft.build.platform="${TARGETPLATFORM}" \
      # Open container labels
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.created="${BUILD_TIME}" \
      org.opencontainers.image.description="Alpine linux" \
      org.opencontainers.image.vendor="Jitesoft" \
      org.opencontainers.image.source="https://gitlab.com/jitesoft/dockerfiles/alpine" \
      # Artifact hub annotations
      io.artifacthub.package.alternative-locations="oci://index.docker.io/jitesoft/alpine,oci://ghcr.io/jitesoft/alpine" \
      io.artifacthub.package.readme-url="https://gitlab.com/jitesoft/dockerfiles/alpine/-/raw/master/README.md"


ENV LANG="C.UTF-8"

ADD ./files/${TARGETPLATFORM}/alpine-minirootfs.tar.gz /
# Why so many apk repositories?
# halifax is the main repository used. The Umu repository is a fallback.
# Both of the repositories have 20gb bandwidth on their connections, so it should
# be good enough for lot's a updates!
# All the @edge prefixed are pinned for edge, check: https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management#Repository_pinning for more information.
RUN echo "ipv6" >> /etc/modules; \
    echo "https://ftp.halifax.rwth-aachen.de/alpine/v${VERSION_SHORT}/main" > /etc/apk/repositories; \
    echo "https://ftp.halifax.rwth-aachen.de/alpine/v${VERSION_SHORT}/community" >> /etc/apk/repositories; \
    echo "# Fallback repositories." >> /etc/apk/repositories; \
    echo "https://ftp.acc.umu.se/mirror/alpinelinux.org/v${VERSION_SHORT}/main" >> /etc/apk/repositories; \
    echo "https://ftp.acc.umu.se/mirror/alpinelinux.org/v${VERSION_SHORT}/community" >> /etc/apk/repositories; \
    echo "# Edge repositories, pinned." >> /etc/apk/repositories; \
    echo "@edge https://ftp.acc.umu.se/mirror/alpinelinux.org/edge/main" >> /etc/apk/repositories; \
    echo "@edgecommunity https://ftp.acc.umu.se/mirror/alpinelinux.org/edge/community" >> /etc/apk/repositories; \
    echo "@edgetesting https://ftp.acc.umu.se/mirror/alpinelinux.org/edge/testing" >> /etc/apk/repositories \
 && apk add --no-cache --virtual .init-deps tzdata \
 && cp /usr/share/zoneinfo/UTC /etc/localtime \
 && echo "UTC" > /etc/timezone \
 && apk del .init-deps

CMD ["/bin/ash"]
