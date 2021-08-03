FROM debian:unstable-slim

LABEL maintainer="Nicholas Nooney <nicholasnooney@gmail.com>"

RUN apt update && apt install -y -q --no-install-recommends \
  build-essential \
  clang \
  cmake \
  cppcheck \
  gdb \
  git \
  lldb \
  llvm \
  meson \
  valgrind \
  && apt autoremove -y && apt clean -y
