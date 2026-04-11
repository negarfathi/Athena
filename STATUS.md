# STATUS

## Paper

Sound Termination and Non-Termination Analysis of C Programs with Bit-Precise Bounded Semantics and Advanced Constructs

## Authors

Negar Fathi, Hiroshi Unno, Tachio Terauchi, and Rahul Purandare

## Requested Badges

- Available
- Functional
- Reusable

## Justification

### Available

The artifact is publicly available through both a persistent archival repository and a public GitHub repository.

- Zenodo DOI: [https://doi.org/10.5281/zenodo.19455305](https://doi.org/10.5281/zenodo.19455305)
- GitHub repository: [https://github.com/negarfathi/Athena](https://github.com/negarfathi/Athena)

The Zenodo archive provides a persistent, citable, versioned copy of the artifact associated with the accepted paper, while the GitHub repository provides the corresponding public development repository.

### Functional

The artifact contains the Athena implementation together with the materials needed to install, run, and evaluate it. The repository includes documentation, installation and execution scripts, benchmark programs, and evaluation outputs that support exercising the artifact and reproducing the experimental workflow described in the paper.

In particular, the artifact provides:
- documented installation instructions
- a basic installation test
- runnable demo and full evaluation modes
- expected demo results for validation
- generated output in both per-benchmark and summary-file forms

These materials enable reviewers to install the artifact, execute it, and validate that it is functioning as intended.

### Reusable

The artifact is organized as a research software package rather than only a one-time paper supplement. It includes a documented implementation, runnable scripts, benchmark materials, and explicit usage documentation for both reproducing the paper’s experiments and analyzing new user-provided C programs.

Athena exposes a direct command-line interface with configurable timeout and semantic-analysis options, including controls for semantic augmentation, type annotation, signedness information, and unreachable-block interpretation. The artifact also documents reusable presets corresponding to the benchmark classes used in the paper. These features make the system usable beyond the packaged evaluation workflow and support reuse, extension, adaptation, and comparative evaluation by other researchers.

## Notes

This artifact accompanies the accepted FSE 2026 paper and is intended to support evaluation of the implementation and experiments described there.

The MIT license applies to the Athena source code and artifact documentation. Third-party tools, dependencies, and benchmark suites referenced or included by the artifact remain subject to their own licenses and terms.