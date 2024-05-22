#  Control of criticality and computation in spiking neuromorphic networks with plasticity - Benjamin Cramer et. al. (2020)

This repository contains an attempt to reproduce the results of the paper: [link](https://www.nature.com/articles/s41467-020-16548-3).

```bibtex
@article{Cramer2020,
abstract = {The critical state is assumed to be optimal for any computation in recurrent neural networks, because criticality maximizes a number of abstract computational properties. We challenge this assumption by evaluating the performance of a spiking recurrent neural network on a set of tasks of varying complexity at - and away from critical network dynamics. To that end, we developed a plastic spiking network on a neuromorphic chip. We show that the distance to criticality can be easily adapted by changing the input strength, and then demonstrate a clear relation between criticality, task-performance and information-theoretic fingerprint. Whereas the information-theoretic measures all show that network capacity is maximal at criticality, only the complex tasks profit from criticality, whereas simple tasks suffer. Thereby, we challenge the general assumption that criticality would be beneficial for any task, and provide instead an understanding of how the collective network state should be tuned to task requirement.},
author = {Cramer, Benjamin and St{\"{o}}ckel, David and Kreft, Markus and Wibral, Michael and Schemmel, Johannes and Meier, Karlheinz and Priesemann, Viola},
journal = {Nature Communications},
title = {{Control of criticality and computation in spiking neuromorphic networks with plasticity}},
url = {http://dx.doi.org/10.1038/s41467-020-16548-3},
year = {2020}
}
```

## Getting started

Running `make all` in the top level directory should:
1. `make install`: make a python virtual environment using `Poetry` and install dependencies.
2. `make run`: run all experiments

## Require tools

Following tools are used to aid reproducibility and ease of use.
See the links for more information.
- [poetry](https://python-poetry.org/): managing python dependencies

## Before finishing project

- [ ] Update the short example
- [ ] Add an example with commentary using Jupyter notebook `result.ipynb`
- [ ] Update paper citation
- [ ] Add details for running all experiments
- [ ] At end of project run `poetry lock` to store projects dependencies

## Example

Short script on running:

## Reproducing experiments
