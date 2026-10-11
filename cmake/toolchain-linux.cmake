# Native Linux build with Clang
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# Use Clang for C and C++
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

# Optional: use LLD for faster linking
set(CMAKE_EXE_LINKER_FLAGS_INIT "-fuse-ld=lld")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "-fuse-ld=lld")