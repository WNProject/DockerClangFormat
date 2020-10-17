# Docker Clang Format

[![License]](LICENSE)
[![Build][Build Badge]][Build Workflow]

## Usage

### Interactive

```bash
docker run -it -v /src:/src clang-format
```

### Command

```bash
docker run -v /src:/src clang-format [command]
```

## Building

```bash
docker build -t clang-format --build-arg CLANG_FORMAT_VERSION=10 .
```

Note that `CLANG_FORMAT_VERSION` defaults to `10` if not supplied.

<!-- external links -->
[License]: https://img.shields.io/github/license/WNProject/DockerClangFormat?label=License
[Build Badge]: https://github.com/WNProject/DockerClangFormat/workflows/Build/badge.svg?branch=main
[Build Workflow]: https://github.com/WNProject/DockerClangFormat/actions?query=workflow%3ABuild+branch%3Amain
