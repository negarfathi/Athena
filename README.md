# Athena

Athena is an end-to-end framework for sound termination and non-termination analysis of C programs. It models finite-width, bit-precise integer semantics and supports advanced constructs such as pointers, arrays, structures, and bitwise operations.

Athena includes the following key components:

* **Pointer-to-array rewriting** – rewrites pointer-based memory operations into structured array indexing, making memory access explicit and analyzable.
* **Bounded-integer semantics assurance** – supports mathematical-integer, modulo-arithmetic, and bit-vector reasoning for sound modeling of finite-width behavior.
* **C-to-LTS translation** – translates the transformed program into a Labeled Transition System (LTS) using an extended version of llvm2KITTeL.
* **Termination and non-termination analysis** – analyzes the resulting LTS using an extended version of MuVal with support for array, tuple, and bit-vector theories.

Together, these components allow Athena to reason soundly about complex memory patterns and low-level bounded semantics that are difficult for many existing termination analyzers to handle.

Athena is built using the following tools:

* [DG](https://github.com/mchalupa/dg) – used for flow-sensitive pointer analysis to extract precise may-point-to sets from LLVM IR.
* [llvm2KITTeL](https://github.com/negarfathi/llvm2kittel) – translate LLVM IR into Labeled Transition Systems (LTSs); Athena extends this translation with support for arrays, structs, and bit-level operations.
* [MuVal](https://github.com/hiroshi-unno/coar) – provide the logic-based analysis engine; Athena extends MuVal with array, tuple, and bit-vector theories for ranking function synthesis and recurrent set detection.



## Requirements

Before installing Athena, ensure that the following dependencies are installed:

* C/C++ compiler with C++23 support (e.g., clang or gcc)
* LLVM/Clang (tested with LLVM 21)
* CMake (version ≥ 3.27)
* Make
* Git
* Docker



## Installation

Clone the repository:

```bash
git clone https://github.com/negarfathi/Athena.git
```

Run the installation script from the repository root:

```bash
./install_Athena.sh
```

This script installs all required dependencies.



## Execution

Run the following script from the repository root:

```bash
./run_Athena.sh
```

The script executes Athena across all benchmarks. It runs the following command:

```bash
<path/to/Athena> <path/to/SourceCode.c> \
    --timeout=<time> \
    --semantic-augmentor-mode=<none/only-bv/only-nobv/all> \
    --type-annotator-mode=<none/only-bv/only-nobv/all> \
    --signedness-info=<none/only-bv/only-nobv/all> \
    --unreachable-exit=<true/false>
```

Where:

* `<path/to/Athena>` is the path to the Athena executable.
* `<path/to/SourceCode.c>` is the path to the C source file to be analyzed.
* `--timeout` specifies the maximum runtime (in seconds) for the analysis.
* `--semantic-augmentor-mode` controls when bounded integer wraparound is modeled explicitly.
* `--type-annotator-mode` controls when type information is added to the generated LTS.
* `--signedness-info` controls when signedness information is added to the generated LTS.
* `--unreachable-exit` determines how `unreachable` blocks are interpreted during analysis:

  * `true` – reaching an `unreachable` block is treated as program termination.
  * `false` – reaching an `unreachable` block is treated as non-termination.

The options `--semantic-augmentor-mode`, `--type-annotator-mode`, and `--signedness-info` use the same four mode values. These values determine when the corresponding component is enabled:

* `none` – never enable the component.
* `only-bv` – enable the component only for programs that contain bitwise operations.
* `only-nobv` – enable the component only for programs that do not contain bitwise operations.
* `all` – always enable the component, regardless of whether the program contains bitwise operations.



## Benchmark Settings

Athena is evaluated on the following benchmark suites:

* [TermCOMP C Benchmarks](https://github.com/TermCOMP/TPDB/tree/master/C)
* [Shi et al. Benchmarks](https://github.com/FSE2022benchmarks/-FSE-2022-Termination/tree/v1.0)

Different benchmark suites require different Athena settings.

#### 1. TermCOMP C Benchmarks

For the TermCOMP C benchmark suite, Athena is executed under mathematical-integer semantics:

```bash
--semantic-augmentor-mode=none \
--type-annotator-mode=none \
--signedness-info=none \
--unreachable-exit=true
```

#### 2. Shi et al. Benchmarks

For the benchmark suite of Shi et al., Athena supports two bounded-semantics configurations:

* **Modulo-arithmetic encoding**

```bash
--semantic-augmentor-mode=only-nobv \
--type-annotator-mode=only-bv \
--signedness-info=only-bv \
--unreachable-exit=true
```

* **Bit-vector encoding**

```bash
--semantic-augmentor-mode=none \
--type-annotator-mode=all \
--signedness-info=all \
--unreachable-exit=true
```



## Papers

This repository is based on the following work:

N. Fathi, H. Unno, T. Terauchi, and R. Purandare, “Sound Termination and Non-Termination Analysis of C Programs with Bit-Precise Bounded Semantics and Advanced Constructs,” to appear in *Proceedings of the ACM International Conference on the Foundations of Software Engineering (FSE)*, 2026.
