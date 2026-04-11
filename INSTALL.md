# INSTALL

## Installation

From the repository root, run:

```bash
./install_Athena.sh
```

This script installs Athena’s required dependencies and components, including [DG](https://github.com/mchalupa/dg), [llvm2KITTeL](https://github.com/negarfathi/llvm2kittel), [MuVal](https://github.com/hiroshi-unno/coar), Athena’s internal components, and the Athena executable. A successful installation should end with messages indicating that DG, llvm2KITTeL, MuVal, Athena’s components, and Athena were installed successfully.

## Execution

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

### Demo mode

`./run_Athena.sh demo` runs Athena on two representative benchmark programs:

* `Benchmarks/FSE/loop/Adding_Subtracting_Zero_1_NT/Adding_Subtracting_Zero_1_NT.c` from the Shi et al. benchmark suite
* `Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_a.01/svcomp_a.01.c` from the TermCOMP C benchmark suite

For the Shi et al. example, Athena runs the three configurations used in the paper:

* Mathematical Integer Mode
* Modulo Arithmetic Mode
* Bitvector Mode

These modes should be interpreted as described in the paper.

For the TermCOMP example, Athena runs only the mathematical-integer configuration, consistent with the unbounded-integer semantics assumed for that benchmark suite.

### Full mode

`./run_Athena.sh full` runs Athena on all benchmark programs included under the repository’s root `Benchmarks/` directory.

For the Shi et al. benchmarks, Athena runs the three FSE configurations listed above. For the TermCOMP benchmarks, Athena runs the mathematical-integer configuration only.

## Basic Installation Test

A basic way to test that the installation succeeded is to run:

```bash
./run_Athena.sh demo
```

After execution, reproduced outputs are written under:

```text
ReproducedResults/
```

Each benchmark directory contains an `Output.txt` file whose first line is the analysis result and whose second line is the runtime in milliseconds. A typical output has the form:

```text
NO
Runtime: 735 milliseconds
```

The result values are interpreted as follows:

* `YES` = termination proved
* `NO` = non-termination proved
* `MAYBE` = inconclusive within the time limit

For the demo run, the expected results are:

* `Adding_Subtracting_Zero_1_NT`: `NO` in all three modes
* `svcomp_a.01`: `YES`

The exact runtime values may vary across machines.

## Summary Files

In addition to the per-benchmark `Output.txt` files, the script generates CSV summary files for:

* `FSE_Bitvector_Mode`
* `FSE_Modulo_Arithmetic_Mode`
* `FSE_Mathematical_Integer_Mode`
* `TermCOMP`

These summary files provide a compact view of the reproduced results, listing the benchmark name, the analysis result, and the runtime in milliseconds for each processed benchmark.