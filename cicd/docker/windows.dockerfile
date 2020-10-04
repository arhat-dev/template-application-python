ARG TARGET="app"
ARG ARCH=amd64

FROM arhatdev/builder-python3.8:windows as builder
FROM arhatdev/python3.8:windows-${ARCH}
# TODO: support windows build
