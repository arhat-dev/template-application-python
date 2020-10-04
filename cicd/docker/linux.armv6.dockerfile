ARG TARGET="app"
ARG ARCH=amd64

# alpine python arch support list
#   - x86
#   - amd64
#   - armv6
#   - armv7
#   - arm64
#   - ppc64le
#   - s390x
FROM arhatdev/builder-python3.8:alpine as builder
FROM arhatdev/python3.8:alpine-${ARCH}
