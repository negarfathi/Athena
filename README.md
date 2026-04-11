# Athena

Athena is an end-to-end framework for sound termination and non-termination analysis of C programs. It models finite-width, bit-precise integer semantics and supports advanced constructs such as pointers, arrays, structures, and bitwise operations.

Athena combines:

- pointer-to-array rewriting
- bounded-integer semantics assurance
- translation to Labeled Transition Systems (LTSs)
- logic-based termination and non-termination analysis using extended MuVal backends

Together, these components enable sound reasoning about complex memory behavior and low-level bounded semantics in C programs.

## Artifact Availability

The artifact is available at:

- Zenodo DOI: [https://doi.org/10.5281/zenodo.19455305](https://doi.org/10.5281/zenodo.19455305)
- GitHub repository: [https://github.com/negarfathi/Athena](https://github.com/negarfathi/Athena)

The Zenodo archive provides the persistent, citable, versioned artifact associated with the accepted paper, while the GitHub repository provides the corresponding public development repository.

## Repository Contents

The repository includes:

- Athena source code
- installation and execution scripts
- benchmark programs under `Benchmarks/`
- evaluation results under `EvaluationResults/`, corresponding to the results reported in the paper
- reproduced outputs under `ReproducedResults/`, generated when the artifact is executed
- artifact documentation:
  - `REQUIREMENTS.md`
  - `INSTALL.md`
  - `STATUS.md`
  - `LICENSE`
  - accepted paper PDF

## Requirements

Athena is a software artifact implemented in C++23 and depends on Clang/LLVM-based analysis and transformation components, CMake-based builds, and Dockerized external dependencies.

For the tested environment and software requirements, see [`REQUIREMENTS.md`](REQUIREMENTS.md).

## Installation

From the repository root, run:

```bash
./install_Athena.sh
```

This script installs Athena’s required dependencies and components, including [DG](https://github.com/mchalupa/dg), [llvm2KITTeL](https://github.com/negarfathi/llvm2kittel), [MuVal](https://github.com/hiroshi-unno/coar), Athena’s internal components, and the Athena executable.

For detailed installation instructions, basic installation validation, and expected demo results, see [`INSTALL.md`](INSTALL.md).

## Reproducing the Paper Results

From the repository root, Athena can be executed in either **demo** mode or **full** mode:

```bash
./run_Athena.sh demo
```

or

```bash
./run_Athena.sh full
```

The `run_Athena.sh` script runs Athena on the selected benchmark programs using the benchmark-specific configurations described in the paper, then runs the corresponding MuVal backend and writes detailed outputs and CSV summaries.

The benchmark programs included in the artifact are stored under the repository’s root `Benchmarks/` directory and come from the following benchmark suites:

* [TermCOMP C Benchmarks](https://github.com/TermCOMP/TPDB/tree/master/C)
* [Shi et al. Benchmarks](https://github.com/FSE2022benchmarks/-FSE-2022-Termination/tree/v1.0)

### Demo Mode

`./run_Athena.sh demo` runs Athena on two representative benchmark programs:

* `Benchmarks/FSE/loop/Adding_Subtracting_Zero_1_NT/Adding_Subtracting_Zero_1_NT.c` from the Shi et al. benchmark suite
* `Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_a.01/svcomp_a.01.c` from the TermCOMP C benchmark suite

For the Shi et al. example, Athena runs the three configurations used in the paper:

* Mathematical Integer Mode
* Modulo Arithmetic Mode
* Bitvector Mode

These modes should be interpreted as described in the paper.

For the TermCOMP example, Athena runs only the mathematical-integer configuration, consistent with the unbounded-integer semantics assumed for that benchmark suite.

### Full Mode

`./run_Athena.sh full` runs Athena on all benchmark programs included under the repository’s root `Benchmarks/` directory.

For the Shi et al. benchmarks, Athena runs the three configurations listed above. For the TermCOMP benchmarks, Athena runs the mathematical-integer configuration only.

## Using Athena on Custom Inputs

In addition to the packaged `demo` and `full` workflows, Athena can also be invoked directly on a user-provided C program as follows:

```bash
<path/to/Athena> <path/to/SourceCode.c> \
    --timeout=<time> \
    --semantic-augmentor-mode=<none|only-bv|only-nobv|all> \
    --type-annotator-mode=<none|only-bv|only-nobv|all> \
    --signedness-info=<none|only-bv|only-nobv|all> \
    --unreachable-exit=<true|false>
```

The packaged `demo` and `full` scripts use this interface internally together with benchmark-specific presets.

Where:

* `<path/to/Athena>` is the path to the Athena executable.
* `<path/to/SourceCode.c>` is the path to the C source file to be analyzed.
* `--timeout` specifies the maximum runtime in seconds.
* `--semantic-augmentor-mode` controls when bounded-integer wraparound is modeled explicitly.
* `--type-annotator-mode` controls when type information is added to the generated LTS.
* `--signedness-info` controls when signedness information is added to the generated LTS.
* `--unreachable-exit` determines how `unreachable` blocks are interpreted during analysis:

  * `true`: reaching an `unreachable` block is treated as program termination.
  * `false`: reaching an `unreachable` block is treated as non-termination.

The options `--semantic-augmentor-mode`, `--type-annotator-mode`, and `--signedness-info` use the same four values:

* `none`: never enable the corresponding component
* `only-bv`: enable it only for programs that contain bitwise operations
* `only-nobv`: enable it only for programs that do not contain bitwise operations
* `all`: always enable it regardless of the presence of bitwise operations

### Predefined Evaluation Presets

For convenience, the artifact documents the presets used for the benchmark classes evaluated in the paper.

#### TermCOMP C Benchmarks

For the TermCOMP C benchmark suite, Athena uses mathematical-integer semantics:

```bash
--semantic-augmentor-mode=none \
--type-annotator-mode=none \
--signedness-info=none \
--unreachable-exit=true
```

#### Shi et al. Benchmarks: Modulo-Arithmetic Encoding

For the Shi et al. benchmark suite, Athena uses the following modulo-arithmetic configuration:

```bash
--semantic-augmentor-mode=only-nobv \
--type-annotator-mode=only-bv \
--signedness-info=only-bv \
--unreachable-exit=true
```

#### Shi et al. Benchmarks: Bit-Vector Encoding

For the Shi et al. benchmark suite, Athena uses the following bit-vector configuration:

```bash
--semantic-augmentor-mode=none \
--type-annotator-mode=all \
--signedness-info=all \
--unreachable-exit=true
```

### Example Direct Invocation

A typical direct invocation on a user-provided input has the following form:

```bash
<path/to/Athena> <path/to/SourceCode.c> \
    --timeout=60 \
    --semantic-augmentor-mode=none \
    --type-annotator-mode=all \
    --signedness-info=all \
    --unreachable-exit=true
```

This interface can be used to analyze new C programs beyond the packaged artifact workflows.

## Output

After execution, reproduced outputs are written under:

```text
ReproducedResults/
```

Each benchmark directory contains an `Output.txt` file whose first line is the analysis result and whose second line is the runtime in milliseconds.

The result values are interpreted as follows:

* `YES` = termination proved
* `NO` = non-termination proved
* `MAYBE` = inconclusive within the time limit

In addition to the per-benchmark `Output.txt` files, the script generates CSV summary files for:

* `FSE_Bitvector_Mode`
* `FSE_Modulo_Arithmetic_Mode`
* `FSE_Mathematical_Integer_Mode`
* `TermCOMP`

These summary files provide a compact view of the reproduced results, listing the benchmark name, the analysis result, and the runtime in milliseconds for each processed benchmark.

The reproduced outputs generated under `ReproducedResults/` are intended to reproduce the evaluation results reported in the paper and provided under `EvaluationResults/`. Exact runtime values may vary across machines.

## Small Example

A basic way to test that Athena is installed and working is to run:

```bash
./run_Athena.sh demo
```

This executes Athena on one Shi et al. benchmark and one TermCOMP benchmark and produces detailed per-benchmark outputs together with CSV summaries.

For detailed installation, execution, and expected demo results, see [`INSTALL.md`](INSTALL.md).

## Documentation

Please see:

* [`REQUIREMENTS.md`](REQUIREMENTS.md) for environment requirements
* [`INSTALL.md`](INSTALL.md) for installation and execution details
* [`STATUS.md`](STATUS.md) for requested badges
* `LICENSE` for licensing terms

## License

The MIT license applies to the Athena source code and artifact documentation. Third-party tools, dependencies, and benchmark suites referenced or included by the artifact remain subject to their respective licenses and terms.

## Paper

This artifact accompanies the FSE 2026 paper:

**Sound Termination and Non-Termination Analysis of C Programs with Bit-Precise Bounded Semantics and Advanced Constructs**