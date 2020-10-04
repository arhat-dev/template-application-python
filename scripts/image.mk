# Copyright 2020 The arhat.dev Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# build
image.build.linux.x86:
	sh scripts/image/build.sh $@

image.build.linux.amd64:
	sh scripts/image/build.sh $@

image.build.linux.armv5:
	sh scripts/image/build.sh $@

image.build.linux.armv6:
	sh scripts/image/build.sh $@

image.build.linux.armv7:
	sh scripts/image/build.sh $@

image.build.linux.arm64:
	sh scripts/image/build.sh $@

image.build.linux.ppc64le:
	sh scripts/image/build.sh $@

image.build.linux.s390x:
	sh scripts/image/build.sh $@

image.build.linux.mips64le:
	sh scripts/image/build.sh $@

image.build.linux.all: \
	image.build.linux.amd64 \
	image.build.linux.arm64 \
	image.build.linux.armv7 \
	image.build.linux.armv6 \
	image.build.linux.armv5 \
	image.build.linux.x86 \
	image.build.linux.s390x \
	image.build.linux.ppc64le \
	image.build.linux.mips64le

image.build.windows.amd64:
	sh scripts/image/build.sh $@

image.build.windows.armv7:
	sh scripts/image/build.sh $@

image.build.windows.all: \
	image.build.windows.amd64 \
	image.build.windows.armv7

# push
image.push.linux.x86:
	sh scripts/image/push.sh $@

image.push.linux.amd64:
	sh scripts/image/push.sh $@

image.push.linux.armv5:
	sh scripts/image/push.sh $@

image.push.linux.armv6:
	sh scripts/image/push.sh $@

image.push.linux.armv7:
	sh scripts/image/push.sh $@

image.push.linux.arm64:
	sh scripts/image/push.sh $@

image.push.linux.ppc64le:
	sh scripts/image/push.sh $@

image.push.linux.s390x:
	sh scripts/image/push.sh $@

image.push.linux.mips64le:
	sh scripts/image/push.sh $@

image.push.linux.all: \
	image.push.linux.amd64 \
	image.push.linux.arm64 \
	image.push.linux.armv7 \
	image.push.linux.armv6 \
	image.push.linux.armv5 \
	image.push.linux.x86 \
	image.push.linux.s390x \
	image.push.linux.ppc64le \
	image.push.linux.mips64le

image.push.windows.amd64:
	sh scripts/image/push.sh $@

image.push.windows.armv7:
	sh scripts/image/push.sh $@

image.push.windows.all: \
	image.push.windows.amd64 \
	image.push.windows.armv7
