cmake_minimum_required(VERSION 3.16)

project(LibraryManager)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(
    LibraryManager 
    src/main.cpp
)

# ---- Platform‑specific configuration ----
if(WIN32)
    # Windows PE target
    target_compile_definitions(LibraryManager PRIVATE PLATFORM_WINDOWS)
    # Example: link against Windows libraries if needed
    # target_link_libraries(myapp PRIVATE ws2_32 shlwapi)
elseif(UNIX AND NOT APPLE)
    # Linux ELF target
    target_compile_definitions(LibraryManager PRIVATE PLATFORM_LINUX)
    # Example: link against pthread if needed
    # find_package(Threads REQUIRED)
    # target_link_libraries(myapp PRIVATE Threads::Threads)
endif()

# ---- Install rules (optional) ----
install(TARGETS LibraryManager RUNTIME DESTINATION bin)