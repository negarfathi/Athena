# REQUIREMENTS

## Hardware Environment

The artifact does not require any non-commodity peripherals.

Recommended resources:

- modern multi-core CPU
- at least 16 GB RAM
- sufficient free disk space for cloning repositories, building components, storing Docker images, and storing reproduced results

Internet access is required during installation because the provided scripts download external repositories and Docker images.

## Software Environment

The artifact was tested on macOS running on Apple Silicon (`arm64`) with Clang 21.1.5 and LLVM 21.1.5.

Before installation, ensure that the following tools are available on the host machine:

- C/C++ compiler with C++23 support
- Clang and LLVM development packages available to CMake
- CMake 3.27 or later
- Make
- Git
- Docker

Athena’s build configuration requires C++23 together with LLVM and Clang discoverable by CMake. The provided installation scripts require `cmake`, `make`, `git`, and `docker`.

## Additional Requirements

Docker is required during installation and execution of major backend components. In particular, the provided scripts use Docker to install or build [DG](https://github.com/mchalupa/dg), [llvm2KITTeL](https://github.com/negarfathi/llvm2kittel), and [MuVal](https://github.com/hiroshi-unno/coar)-related components.

The artifact includes benchmark programs under the repository’s root `Benchmarks/` directory.

## Notes

No separate `requirements.txt` file is needed for this artifact, since it is not a Python-only environment.

The artifact was tested in the environment above. Other environments may also work, but they have not been validated as part of this artifact submission.