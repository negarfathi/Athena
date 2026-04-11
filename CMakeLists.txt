cmake_minimum_required(VERSION 3.27)
project(Athena)

# Set the C++ standard to C++23
set(CMAKE_CXX_STANDARD 23)

# Find LLVM package
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# Include LLVM headers
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Find Clang package
find_package(Clang REQUIRED CONFIG)
message(STATUS "Using ClangConfig.cmake in: ${CLANG_DIR}")

# Include Clang headers
include_directories(${CLANG_INCLUDE_DIRS})

add_executable(Athena
        src/main.cpp

        src/transform_code/transform_code.cpp
        include/transform_code/transform_code.h

        include/bit_operation_visitor/bit_operation_action.h
        src/bit_operation_visitor/bit_operation_action.cpp
        include/bit_operation_visitor/bit_operation_consumer.h
        src/bit_operation_visitor/bit_operation_consumer.cpp
        include/bit_operation_visitor/bit_operation_visitor.h
        src/bit_operation_visitor/bit_operation_visitor.cpp
)

# Link against specific LLVM and Clang libraries
target_link_libraries(Athena
        LLVM
        clangAST
        clangFrontend
        clangTooling
)