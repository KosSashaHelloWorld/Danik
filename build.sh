#!/usr/bin/env bash
set -euo pipefail

echo "==> Building for Linux (ELF)"
cmake -S . -B build-linux \
      -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain-linux.cmake \
      -DCMAKE_BUILD_TYPE=Release
cmake --build build-linux

echo "==> Building for Windows (PE)"
cmake -S . -B build-windows \
      -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain-windows.cmake \
      -DCMAKE_BUILD_TYPE=Release
cmake --build build-windows