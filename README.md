# Athena

Athena is an end-to-end framework for sound termination and non-termination analysis of C programs. It models finite-width, bit-precise integer semantics and supports advanced C constructs, including pointers, arrays, and structures.

Athena combines:

- pointer-to-array rewriting,
- bounded-integer semantics assurance,
- translation to Labeled Transition Systems (LTSs) using extended [llvm2KITTeL](https://github.com/negarfathi/llvm2kittel), and
- logic-based termination and non-termination analysis using extended [MuVal](https://github.com/hiroshi-unno/coar) backends.

Together, these components enable sound reasoning about complex memory behavior and low-level bounded semantics in C programs.

## Requirements

Athena was tested on macOS running on Apple Silicon (`arm64`) with Clang 21.1.5 and LLVM 21.1.5.

The following tools are required:

- C/C++ compiler with C++23 support
- Clang and LLVM development packages available to CMake
- CMake 3.27 or later
- Make
- Git
- Docker

Recommended hardware includes a modern multi-core CPU, at least 16 GB of RAM, and sufficient disk space for building dependencies, storing Docker images, and saving reproduced results.

## Installation

From the repository root, run:

```bash
./install_Athena.sh
```

The script installs Athena's dependencies and builds the required components, including [DG](https://github.com/mchalupa/dg), [llvm2KITTeL](https://github.com/negarfathi/llvm2kittel), [MuVal](https://github.com/hiroshi-unno/coar)-related components, Athena's internal modules, and the Athena executable.

## Demo Run

To run Athena on a small set of representative benchmark programs, use:

```bash
./run_Athena.sh demo
```

The demo mode runs Athena on two benchmarks:

- `Benchmarks/FSE/loop/Adding_Subtracting_Zero_1_NT/Adding_Subtracting_Zero_1_NT.c`
- `Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_a.01/svcomp_a.01.c`

For the first benchmark, from the [Shi et al. benchmark suite](https://github.com/FSE2022benchmarks/-FSE-2022-Termination/tree/v1.0), Athena runs three configurations:

- **Mathematical Integer**: analyzes the program under unbounded mathematical-integer semantics. However, this is not the intended semantics for this benchmark suite, whose behavior depends on finite-width arithmetic.
- **Modulo Arithmetic**: models bounded-integer semantics by adding explicit wraparound operations for finite-width arithmetic.
- **Bitvector**: uses bit-vector reasoning through type-based LTS annotations, enabling bit-precise finite-width analysis.

For the second benchmark, from the [TermCOMP C benchmark suite](https://github.com/TermCOMP/TPDB/tree/master/C), Athena runs the Mathematical Integer configuration, consistent with the unbounded-integer semantics assumed for that benchmark suite.

The expected demo results are:

- `Adding_Subtracting_Zero_1_NT`: `NO` in all three modes
- `svcomp_a.01`: `YES`

Runtime values may vary across machines.

## Full Run

To run Athena on all benchmark programs included in the repository, use:

```bash
./run_Athena.sh full
```

The full mode analyzes all benchmark programs under the repository's root `Benchmarks/` directory.

The included benchmarks come from:

- [TermCOMP C Benchmarks](https://github.com/TermCOMP/TPDB/tree/master/C)
- [Shi et al. Benchmarks](https://github.com/FSE2022benchmarks/-FSE-2022-Termination/tree/v1.0)

For the Shi et al. benchmarks, Athena runs the Mathematical Integer, Modulo Arithmetic, and Bitvector configurations. For the TermCOMP benchmarks, Athena runs the Mathematical Integer configuration.

## Custom Input Usage

In addition to the packaged `demo` and `full` workflows, Athena can be invoked directly on a user-provided C program:

```bash
<path/to/Athena> <path/to/SourceCode.c> \
    --timeout=<time> \
    --semantic-augmentor-mode=<none|only-bv|only-nobv|all> \
    --type-annotator-mode=<none|only-bv|only-nobv|all> \
    --signedness-info=<none|only-bv|only-nobv|all> \
    --unreachable-exit=<true|false>
```

Arguments:

- `<path/to/Athena>`: path to the Athena executable
- `<path/to/SourceCode.c>`: path to the C source file to be analyzed
- `--timeout`: maximum runtime in seconds
- `--semantic-augmentor-mode`: controls when bounded-integer wraparound is modeled explicitly
- `--type-annotator-mode`: controls when type information is added to the generated LTS
- `--signedness-info`: controls when signedness information is added to the generated LTS
- `--unreachable-exit`: controls how `unreachable` blocks are interpreted

For `--unreachable-exit`:

- `true`: reaching an `unreachable` block is treated as program termination
- `false`: reaching an `unreachable` block is treated as non-termination

The options `--semantic-augmentor-mode`, `--type-annotator-mode`, and `--signedness-info` use the following values:

- `none`: never enable the corresponding component
- `only-bv`: enable it only for programs that contain bitwise operations
- `only-nobv`: enable it only for programs that do not contain bitwise operations
- `all`: always enable it

### Evaluation Presets

For the TermCOMP C benchmark suite, Athena uses mathematical-integer semantics:

```bash
--semantic-augmentor-mode=none \
--type-annotator-mode=none \
--signedness-info=none \
--unreachable-exit=true
```

For the Shi et al. benchmark suite, Athena uses the following modulo-arithmetic configuration:

```bash
--semantic-augmentor-mode=only-nobv \
--type-annotator-mode=only-bv \
--signedness-info=only-bv \
--unreachable-exit=true
```

For the Shi et al. benchmark suite, Athena uses the following bit-vector configuration:

```bash
--semantic-augmentor-mode=none \
--type-annotator-mode=all \
--signedness-info=all \
--unreachable-exit=true
```

## Output Format

After execution, Athena writes reproduced outputs under:

```text
ReproducedResults/
```

Each benchmark directory contains an `Output.txt` file. The first line reports the analysis result, and the second line reports the runtime in milliseconds.

Example:

```text
NO
Runtime: 735 milliseconds
```

The result values are interpreted as follows:

- `YES`: termination proved
- `NO`: non-termination proved
- `MAYBE`: inconclusive within the time limit

The scripts also generate CSV summary files for:

- `FSE_Bitvector_Mode`
- `FSE_Modulo_Arithmetic_Mode`
- `FSE_Mathematical_Integer_Mode`
- `TermCOMP`

These files summarize the benchmark name, analysis result, and runtime for each processed benchmark.

The reproduced outputs under `ReproducedResults/` are intended to reproduce the evaluation results reported in the paper and provided under `EvaluationResults/`. Exact runtime values may vary across machines.

## Related Paper

This repository is based on the following work:

N. Fathi, H. Unno, T. Terauchi, and R. Purandare, "Sound Termination and Non-termination Analysis of C Programs with Bit-Precise Bounded Semantics and Advanced Constructs," *Proceedings of the ACM on Software Engineering*, vol. 3, no. FSE, pp. 4505-4528, Jun. 2026, doi: [10.1145/3808205](https://doi.org/10.1145/3808205).

Archived artifact:

- Zenodo DOI: [https://doi.org/10.5281/zenodo.19455305](https://doi.org/10.5281/zenodo.19455305)
