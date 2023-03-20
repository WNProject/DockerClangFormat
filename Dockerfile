FROM ubuntu:focal-20230308

# set input arguments
ARG CLANG_FORMAT_VERSION="10"

# install packages
RUN export DEBIAN_FRONTEND='noninteractive' && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
      apt-utils \
      clang-format-${CLANG_FORMAT_VERSION} && \
    update-alternatives --install \
      /usr/bin/clang-format clang-format \
      /usr/bin/clang-format-${CLANG_FORMAT_VERSION} 100 && \
    apt-get autoremove --purge -y && \
    apt-get clean && \
    rm -rf \
      /var/lib/apt/lists/* \
      /var/tmp/* \
      /tmp/*

# default command
CMD ["bash"]

# labels
LABEL maintainer WNProject
LABEL org.opencontainers.image.source \
      https://github.com/WNProject/DockerClangFormat
