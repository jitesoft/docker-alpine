#!/usr/bin/env sh

case "$1" in
    x86_64)
        echo "linux/amd64"
        exit;;
    aarch64)
        echo "linux/arm64"
        exit;;
     armv7)
        echo "linux/arm/v7"
        exit;;
esac
