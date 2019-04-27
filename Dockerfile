FROM scratch
ARG VERSION="x.x.x"
ARG ARC="x86_64"
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      version="${VERSION}" \
      arch="${ARC}"

ADD alpine-minirootfs.tar.gz /
CMD ["/bin/sh"]
