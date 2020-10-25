# Docker Clang Format

[![License]](LICENSE)
[![Build][Build Badge]][Build Workflow]

Docker container containing all needed tools to run **Clang Format**. Each
container will contain only one version of the **Clang Format** but will contain
all additional libraries needed.

## Usage

There are 2 ways to use this container [Interactive](#interactive) and
[Command](#command) mode.

### Interactive

This will drop you into an interactive `bash` session.

```bash
docker run -it -v /src:/src clang-format
```

### Command

This will run the supplied command directly.

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
