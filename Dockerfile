FROM ghcr.io/nnooney-docker/base-user:main

LABEL maintainer="Nicholas Nooney <nicholasnooney@gmail.com>"

RUN apt update && apt install -y -q --no-install-recommends \
  build-essential \
  ca-certificates \
  clang \
  cmake \
  cppcheck \
  curl \
  gdb \
  git \
  gpg \
  lldb \
  llvm \
  meson \
  ssh \
  valgrind \
  wget \
  && apt autoremove -y && apt clean -y
