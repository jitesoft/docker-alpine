FROM scratch
ARG VERSION="x.x.x"
ARG ARC="x86_64"
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      version="${VERSION}" \
      arch="${ARC}"

ADD alpine-minirootfs.tar.gz /
RUN printf "https://ftp.acc.umu.se/mirror/alpinelinux.org/v3.9/main\nhttps://ftp.acc.umu.se/mirror/alpinelinux.org/v3.9/community" > /etc/apk/repositories
ENTRYPOINT ["/bin/ash"]
