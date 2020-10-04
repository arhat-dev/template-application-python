ARG TARGET="app"
ARG ARCH=amd64

# debian python arch support list
#   - x86
#   - amd64
#   - armv5
#   - armv7
#   - arm64
#   - ppc64le
#   - mips64le
#   - s390x
FROM arhatdev/builder-python3.8:debian as builder
FROM arhatdev/python3.8:debian-${ARCH}
