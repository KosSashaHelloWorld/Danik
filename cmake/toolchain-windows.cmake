# Cross‑compile to Windows x86_64 using Clang + MinGW‑w64
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# Target triple
set(TOOLCHAIN_PREFIX x86_64-w64-mingw32)

# Clang as the compiler, but tell it to use the MinGW‑w64 target
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

# Force Clang to target Windows
set(CMAKE_C_COMPILER_TARGET ${TOOLCHAIN_PREFIX})
set(CMAKE_CXX_COMPILER_TARGET ${TOOLCHAIN_PREFIX})

# Where the MinGW‑w64 headers and libraries live
set(CMAKE_FIND_ROOT_PATH /usr/${TOOLCHAIN_PREFIX})

# Search for programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Search for headers and libraries only in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)