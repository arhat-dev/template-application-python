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

# IMAGE_REPOS is the comma separated list of image registries
IMAGE_REPOS ?= docker.io/arhatdev,ghcr.io/arhat-dev
PYPI_REGISTRY ?= https://pypi.org

export IMAGE_REPOS

DEFAULT_IMAGE_MANIFEST_TAG ?= latest

.PHONY: run
run:
	pipenv run python src

.PHONY: lock
lock:
	pipenv lock --clear
	pipenv install --dev --deploy

.PHONY: test
test:
	pipenv run pytest test \
		|| code=$$?; if [ $$code != 5 ]; then echo "exit code: $$code"; exit $$code ; fi

.PHONY: dist
dist:
	rm -rf dist
	pipenv run python setup.py sdist bdist_wheel

.PHONY: upload
upload:
	pipenv run twine upload --repository ${PYPI_REGISTRY} dist/*

include scripts/lint.mk

# image
include scripts/image.mk

# optional private scripts
-include private/scripts.mk
