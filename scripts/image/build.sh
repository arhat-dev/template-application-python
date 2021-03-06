#!/bin/sh

# Copyright 2020 The arhat.dev Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

. scripts/image/common.sh

_build_image() {
  os="$1"
  arch="$2"

  # try to find os:arch specific dockerfile
  dockerfile="cicd/docker/${os}.${arch}.dockerfile"
  if [ ! -f "${dockerfile}" ]; then
    # fallback to os:multi-arch dockerfile
    dockerfile="cicd/docker/${os}.dockerfile"
    if [ ! -f "${dockerfile}" ]; then
      echo "no such dockerfile ${dockerfile}"
      exit 1
    fi
  fi

  image_names=""
  for repo in ${IMAGE_REPOS}; do
    image_names="-t $(_get_image_name "${repo}" "${os}" "${arch}") ${image_names}"
  done

  if [ -z "${image_names}" ]; then
    echo "no image name generated"
    exit 1
  fi

  # shellcheck disable=SC2086
  docker build --pull -f "${dockerfile}" \
    ${image_names} \
    --build-arg ARCH="${arch}" .
}

os=$(printf "%s" "$@" | cut -d\. -f3)
arch=$(printf "%s" "$@" | cut -d\. -f4)

_build_image "${os}" "${arch}"
