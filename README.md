# Template Application Go

[![CI](https://github.com/arhat-dev/template-application-python/workflows/CI/badge.svg)](https://github.com/arhat-dev/template-application-python/actions?query=workflow%3ACI)
[![PkgGoDev](https://pkg.go.dev/badge/arhat.dev/template-application-python)](https://pkg.go.dev/arhat.dev/template-application-python)
[![GoReportCard](https://goreportcard.com/badge/arhat.dev/template-application-python)](https://goreportcard.com/report/arhat.dev/template-application-python)
[![codecov](https://codecov.io/gh/arhat-dev/template-application-python/branch/master/graph/badge.svg)](https://codecov.io/gh/arhat-dev/template-application-python)

Template repo for applications written in Python

## Make Targets

- image build: `image.build.<comp>.{OS}.{ARCH}`
- image push: `image.push.<comp>.{OS}.{ARCH}`
- unit tests: `test`
- packaging:
  - linux deb: `package.<comp>.deb.{ARCH}`
  - linux rpm: `package.<comp>.rpm.{ARCH}`
  - windows msi: `package.<comp>.msi.{ARCH}`
  - darwin pkg: `package.<comp>.pkg.{ARCH}`

## LICENSE

```text
Copyright 2020 The arhat.dev Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
