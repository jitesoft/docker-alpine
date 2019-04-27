FROM scratch
ADD alpine-minirootfs-x86_64.tar.gz /
CMD ["/bin/sh"]
